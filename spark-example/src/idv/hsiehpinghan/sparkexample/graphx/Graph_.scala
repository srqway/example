package idv.hsiehpinghan.sparkexample.graphx

import org.apache.spark.SparkConf
import org.apache.spark.SparkContext
import org.apache.spark.graphx.Edge
import org.apache.spark.graphx.Graph
import org.apache.spark.graphx.Graph.graphToGraphOps
import org.apache.spark.graphx.VertexId
import org.apache.spark.rdd.RDD

class Graph_ {
  def construct(sc: SparkContext) = {
    val users: RDD[(VertexId, (String, String, String))] = sc.parallelize(List((1L, ("a_1", "b_1", "c_1")), (2L, ("a_2", "b_2", "c_2")), (3L, ("a_3", "b_3", "c_3"))))
    val relationships: RDD[Edge[String]] = sc.parallelize(List(Edge(1L, 2L, "1 to 2"), Edge(1L, 3L, "1 to 3"), Edge(2L, 3L, "2 to 3"), Edge(1L, 4L, "1 to none")))
    val defaultUser = ("a_?", "b_?", "c_?")
    val graph = Graph(users, relationships, defaultUser)
    graph
  }

  def verticesFilter(graph: Graph[(String, String, String), String]) = {
    graph.vertices.filter { case (i, (a, b, c)) => i == 2L }
  }

  def edgesFilter(graph: Graph[(String, String, String), String]) = {
    graph.edges.filter(edge => edge.srcId == 2L && edge.dstId == 3L)
  }

  def getTriplets(graph: Graph[(String, String, String), String]) = {
    graph.triplets
  }

  def getInDegrees(graph: Graph[(String, String, String), String]) = {
    graph.inDegrees
  }

  def mapVertices(graph: Graph[(String, String, String), String]) = {
    graph.mapVertices { case (id, (a, b, c)) => (c, b, a) }
  }

  def outerJoinVertices(sc: SparkContext, graph: Graph[(String, String, String), String]) = {
    val otherRDD = sc.parallelize(List((1L, ("a_10", "b_10")), (2L, ("a_20", "b_20"))))
    graph.outerJoinVertices(otherRDD) {
      case (id, (a, b, c), o) => {
        val x = o.getOrElse(("?", "?"))
        (x._1, x._2, c)
      }
    }
  }

  def subgraph(graph: Graph[(String, String, String), String]) = {
    graph.subgraph(vpred = (id, attr) => attr._2 != "b_?");
  }

  def aggregateMessages(graph: Graph[(String, String, String), String]) = {
    graph.aggregateMessages[(Long, (String, String, String))](
      triplet => { // map
        triplet.sendToDst(1L, triplet.srcAttr)
      },
      (a, b) => { // reduce
        (a._1 + b._1, (a._2._1 + b._2._1, a._2._2 + b._2._2, a._2._3 + b._2._3))
      })
  }

}

object Graph_Main extends App {
  val conf = new SparkConf().setAppName("Graph_")
    .setMaster("local")
  val sc = new SparkContext(conf)
  val obj = new Graph_
  val graph = obj.construct(sc)
  //    println("<<graph vertices>>")
  //    graph.vertices.collect.foreach(println)
  //    println("<<graph edges>>")
  //    graph.edges.collect.foreach(println)

  //  val filteredVertexRDD = obj.verticesFilter(graph)
  //  println("<<filteredVertexRDD>>")
  //  filteredVertexRDD.collect().foreach(println)

  //  val edgesFilter = obj.edgesFilter(graph)
  //  println("<<edgesFilterRDD>>")
  //  edgesFilter.collect.foreach(println)

  //  val triplets = obj.getTriplets(graph)
  //  triplets.foreach(t => println("srcId(" + t.srcId + ") srcAttr(" + t.srcAttr + ") attr(" + t.attr + ") dstId(" + t.dstId + ") dstAttr(" + t.dstAttr + ")"))

  //  val inDegreesVertexRDD = obj.getInDegrees(graph)
  //  println("<<inDegreesVertexRDD>>")
  //  inDegreesVertexRDD.collect().foreach(println)

  //  val mapVerticesGraph = obj.mapVertices(graph)
  //  println("<<mapVerticesGraph vertices>>")
  //  mapVerticesGraph.vertices.collect.foreach(println)

  //  val outerJoinVerticesGraph = obj.outerJoinVertices(sc, graph)
  //  println("<<outerJoinVerticesGraph vertices>>")
  //  outerJoinVerticesGraph.vertices.collect.foreach(println)

  //  val subgraph = obj.subgraph(graph)
  //  println("<<subgraph vertices>>")
  //  subgraph.vertices.collect.foreach(println)

  val aggregateMessages = obj.aggregateMessages(graph)
  println("<<aggregateMessages vertices>>")
  aggregateMessages.collect.foreach(println)
}

