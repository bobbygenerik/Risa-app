package androidx.work.impl;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class WorkerStoppedException extends CancellationException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f1580;

    public WorkerStoppedException(int i) {
        this.f1580 = i;
    }
}
