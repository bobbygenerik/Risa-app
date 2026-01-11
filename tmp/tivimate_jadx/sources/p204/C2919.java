package p204;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.TreeSet;
import p137.AbstractC2305;
import p146.C2409;
import p237.C3201;
import p404.C4790;
import p432.C5117;
import p432.C5118;
import ʽⁱ.ᵎﹶ;
import ˏˆ.ﹳٴ;
import ﹳˋ.ʼˎ;

/* renamed from: ˎᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2919 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f11039;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f11040;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f11041;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public volatile boolean f11042;

    public C2919() {
        this.f11041 = new ʼˎ(19);
        this.f11039 = new LinkedHashMap();
        this.f11040 = new LinkedHashSet();
    }

    public C2919(C4790 c4790, TreeSet treeSet, Object obj) {
        this.f11042 = false;
        this.f11040 = c4790;
        this.f11041 = treeSet;
        this.f11039 = obj;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m6446(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                AbstractC2305.m5364(autoCloseable);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m6447() {
        Iterator it = ((TreeSet) this.f11041).iterator();
        while (it.hasNext()) {
            C3201 c3201 = (C3201) it.next();
            Object obj = this.f11039;
            C2409 c2409 = c3201.f12251;
            if (!c2409.isEmpty()) {
                c3201.f12248.mo4856(this, obj, c2409);
            }
        }
        if (this.f11042) {
            return;
        }
        if (!C5117.class.equals(this.f11039.getClass()) && !C5118.class.equals(this.f11039.getClass())) {
            ((ﹳٴ) ((C4790) this.f11040).f18036).ˊʻ(new ᵎﹶ(this.f11039));
        } else {
            if (C5118.class.equals(this.f11039.getClass())) {
                return;
            }
            ((ﹳٴ) ((C4790) this.f11040).f18036).ˊʻ(new ᵎﹶ(this.f11039));
        }
    }
}
