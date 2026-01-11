package p322;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ᴵˋ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC3971 implements Executor {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC3971 f15307;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC3971[] f15308;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵˋ.ٴﹶ, java.lang.Enum] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f15307 = r0;
        f15308 = new EnumC3971[]{r0};
    }

    public static EnumC3971 valueOf(String str) {
        return (EnumC3971) Enum.valueOf(EnumC3971.class, str);
    }

    public static EnumC3971[] values() {
        return (EnumC3971[]) f15308.clone();
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
