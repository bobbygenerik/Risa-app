package p121;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ˈˊ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC2017 implements Executor {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC2017 f7905;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC2017[] f7906;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [ˈˊ.ʼᐧ, java.lang.Enum] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f7905 = r0;
        f7906 = new EnumC2017[]{r0};
    }

    public static EnumC2017 valueOf(String str) {
        return (EnumC2017) Enum.valueOf(EnumC2017.class, str);
    }

    public static EnumC2017[] values() {
        return (EnumC2017[]) f7906.clone();
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
