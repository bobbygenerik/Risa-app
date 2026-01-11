package com.google.android.gms.common.api;

import p319.C3926;

/* loaded from: classes.dex */
public final class UnsupportedApiCallException extends UnsupportedOperationException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3926 f1724;

    public UnsupportedApiCallException(C3926 c3926) {
        this.f1724 = c3926;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return "Missing ".concat(String.valueOf(this.f1724));
    }
}
