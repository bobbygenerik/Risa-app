package com.bumptech.glide.load.engine;

import android.support.v4.media.session.AbstractC0001;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p031.InterfaceC1141;
import p080.C1686;

/* loaded from: classes.dex */
public final class GlideException extends Exception {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final StackTraceElement[] f1637 = new StackTraceElement[0];

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f1638;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final List f1639;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Class f1640;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public InterfaceC1141 f1641;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final String f1642;

    public GlideException(String str) {
        this(str, Collections.EMPTY_LIST);
    }

    public GlideException(String str, List list) {
        this.f1642 = str;
        setStackTrace(f1637);
        this.f1639 = list;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m1122(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m1123(List list, C1686 c1686) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            c1686.append("Cause (");
            int i2 = i + 1;
            c1686.append(String.valueOf(i2));
            c1686.append(" of ");
            c1686.append(String.valueOf(size));
            c1686.append("): ");
            Throwable th = (Throwable) list.get(i);
            if (th instanceof GlideException) {
                ((GlideException) th).m1126(c1686);
            } else {
                m1122(th, c1686);
            }
            i = i2;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m1124(Throwable th, ArrayList arrayList) {
        if (!(th instanceof GlideException)) {
            arrayList.add(th);
            return;
        }
        Iterator it = ((GlideException) th).f1639.iterator();
        while (it.hasNext()) {
            m1124((Throwable) it.next(), arrayList);
        }
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f1642);
        String str2 = "";
        if (this.f1640 != null) {
            str = ", " + this.f1640;
        } else {
            str = "";
        }
        sb.append(str);
        int i = this.f1638;
        sb.append(i != 0 ? ", ".concat(AbstractC0001.m5(i)) : "");
        if (this.f1641 != null) {
            str2 = ", " + this.f1641;
        }
        sb.append(str2);
        ArrayList arrayList = new ArrayList();
        m1124(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" root causes:");
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            Throwable th = (Throwable) obj;
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        m1126(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        m1126(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        m1126(printWriter);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m1125() {
        ArrayList arrayList = new ArrayList();
        m1124(this, arrayList);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i2 = i + 1;
            sb.append(i2);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            sb.toString();
            i = i2;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m1126(Appendable appendable) {
        m1122(this, appendable);
        try {
            m1123(this.f1639, new C1686(appendable));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
