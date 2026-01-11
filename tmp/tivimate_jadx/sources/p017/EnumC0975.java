package p017;

import com.google.android.gms.internal.play_billing.י;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ʼʻ.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC0975 implements Iterator {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC0975 f3938;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC0975[] f3939;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ʼʻ.ˑٴ] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f3938 = r0;
        f3939 = new EnumC0975[]{r0};
    }

    public static EnumC0975 valueOf(String str) {
        return (EnumC0975) Enum.valueOf(EnumC0975.class, str);
    }

    public static EnumC0975[] values() {
        return (EnumC0975[]) f3939.clone();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        י.ٴﹶ("no calls to next() since the last call to remove()", false);
    }
}
