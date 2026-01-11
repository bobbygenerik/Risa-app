package com.google.common.util.concurrent;

import j$.util.Objects;
import p017.AbstractC0997;
import p121.AbstractC2026;
import ˈˊ.ˉˆ;

/* loaded from: classes.dex */
public final class CycleDetectingLockFactory$PotentialDeadlockException extends IllegalStateException {
    static {
        AbstractC0997.m3275(3, ˉˆ.class.getName(), "com.google.common.util.concurrent.CycleDetectingLockFactory$PotentialDeadlockException", AbstractC2026.class.getName());
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String message = super.getMessage();
        Objects.requireNonNull(message);
        StringBuilder sb = new StringBuilder(message);
        for (Throwable th = null; th != null; th = th.getCause()) {
            sb.append(", ");
            sb.append(th.getMessage());
        }
        return sb.toString();
    }
}
