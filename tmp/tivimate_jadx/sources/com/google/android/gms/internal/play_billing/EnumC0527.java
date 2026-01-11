package com.google.android.gms.internal.play_billing;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: com.google.android.gms.internal.play_billing.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC0527 implements Executor {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC0527 f2295;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC0527[] f2296;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.gms.internal.play_billing.ʼˈ] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f2295 = r0;
        f2296 = new EnumC0527[]{r0};
    }

    public static EnumC0527[] values() {
        return (EnumC0527[]) f2296.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
