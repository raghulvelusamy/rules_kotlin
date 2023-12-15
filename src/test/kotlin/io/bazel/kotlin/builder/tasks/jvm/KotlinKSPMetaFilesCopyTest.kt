package io.bazel.kotlin.builder.tasks.jvm

import io.bazel.kotlin.KotlinAssertionTestCase
import org.junit.Test
import org.junit.runner.RunWith
import org.junit.runners.JUnit4

@RunWith(JUnit4::class)
class KotlinKSPMetaFilesCopyTest: KotlinAssertionTestCase("src/test/data/jvm/ksp") {

    @Test
    fun testKSPCopiesAllFilesFromMetaINF() {
        jarTestCase("coffee_lib.jar", description = "Generated jar with ksp plugin contains meta-inf contents") {
            assertContainsEntries("META-INF/MANIFEST.MF")
        }
    }

    @Test
    fun testKSPCopiesAllFilesFromMetaINF1() {
        jarTestCase("moshi_lib.jar", description = "Generated jar with ksp plugin contains meta-inf contents") {
            assertContainsEntries("META-INF/", "META-INF/MANIFEST.MF", "META-INF/src_test_data_jvm_ksp-moshi_lib.kotlin_module")
        }
    }
}