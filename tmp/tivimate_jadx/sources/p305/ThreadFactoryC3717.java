package p305;

import java.util.concurrent.ThreadFactory;

/* renamed from: ᐧˎ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class ThreadFactoryC3717 implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "ExoPlayer:AudioTrackReleaseThread");
    }
}
