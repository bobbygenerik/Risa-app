package p056;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ʽﹳ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC1511 implements Executor {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC1511 f5975;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC1511[] f5976;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ʽﹳ.ﾞʻ] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f5975 = r0;
        f5976 = new EnumC1511[]{r0};
    }

    public static EnumC1511 valueOf(String str) {
        return (EnumC1511) Enum.valueOf(EnumC1511.class, str);
    }

    public static EnumC1511[] values() {
        return (EnumC1511[]) f5976.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "DirectExecutor";
    }
}
