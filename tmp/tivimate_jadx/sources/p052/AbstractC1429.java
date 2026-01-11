package p052;

import java.io.Closeable;
import java.io.Flushable;

/* renamed from: ʽᴵ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1429 implements Closeable, Flushable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public String[] f5586;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f5587;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int[] f5588;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f5589;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int[] f5590;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f5591;

    /* renamed from: ʽ */
    public abstract C1425 mo4177();

    /* renamed from: ʾˋ */
    public abstract C1425 mo4178();

    /* renamed from: ˈʿ */
    public abstract C1425 mo4180(Number number);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int m4192() {
        int i = this.f5587;
        if (i != 0) {
            return this.f5590[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: ˉˆ */
    public abstract C1425 mo4181();

    /* renamed from: ـˆ */
    public abstract C1425 mo4183(String str);

    /* renamed from: ᴵˑ */
    public abstract C1425 mo4186(String str);

    /* renamed from: ᵎˊ */
    public abstract C1425 mo4187(long j);

    /* renamed from: ᵎﹶ */
    public abstract C1425 mo4188();

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final String m4193() {
        return AbstractC1414.m4153(this.f5587, this.f5590, this.f5586, this.f5588);
    }
}
