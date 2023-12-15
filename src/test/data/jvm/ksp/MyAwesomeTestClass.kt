package src.test.data.jvm.ksp

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class MyAwesomeTestClass(val id: Int)