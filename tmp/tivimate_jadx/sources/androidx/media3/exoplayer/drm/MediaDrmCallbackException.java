package androidx.media3.exoplayer.drm;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
import p266.C3456;

/* loaded from: classes.dex */
public final class MediaDrmCallbackException extends IOException {
    public MediaDrmCallbackException(C3456 c3456, Uri uri, Map map, long j, Exception exc) {
        super(exc);
    }
}
