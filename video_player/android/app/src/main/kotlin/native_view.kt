package dev.flutter.example

import android.content.Context
import android.graphics.Color
import android.view.View
import android.widget.TextView
import io.flutter.plugin.platform.PlatformView

internal class NativeView(context: Context, id: Int, creationParams: Map<String?, Any?>?) : PlatformView {
    private val videoView: VideoView

    override fun getView(): View {
        return videoView
    }

    override fun dispose() {}

    init {
        val videoUri: Uri = Uri.parse("https://www.example.com/path/to/your/video.mp4")
        videoView = VideoView(context)
        videoView.setVideoURI(videoUri)        
        videoView = "Rendered on a native Android view (id: $id)"
    }
}