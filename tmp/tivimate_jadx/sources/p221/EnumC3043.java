package p221;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ˏᐧ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC3043 implements Executor {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC3043[] f11585;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC3043 f11586;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final Handler f11587;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ˏᐧ.ٴﹶ] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f11586 = r0;
        f11585 = new EnumC3043[]{r0};
        f11587 = new Handler(Looper.getMainLooper());
    }

    public static EnumC3043 valueOf(String str) {
        return (EnumC3043) Enum.valueOf(EnumC3043.class, str);
    }

    public static EnumC3043[] values() {
        return (EnumC3043[]) f11585.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        f11587.post(runnable);
    }
}
