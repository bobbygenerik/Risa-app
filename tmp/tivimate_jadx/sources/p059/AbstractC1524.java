package p059;

import android.content.Context;
import java.util.LinkedHashSet;
import p003.RunnableC0786;
import p430.AbstractC5099;
import ʿʿ.ʽ;
import ᐧᵎ.ᵢי;

/* renamed from: ʾʽ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1524 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f6001 = new Object();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final LinkedHashSet f6002 = new LinkedHashSet();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f6003;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Context f6004;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ᵢי f6005;

    public AbstractC1524(Context context, ᵢי r2) {
        this.f6005 = r2;
        this.f6004 = context.getApplicationContext();
    }

    /* renamed from: ʽ */
    public abstract void mo4326();

    /* renamed from: ˈ */
    public abstract void mo4327();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4332(Object obj) {
        synchronized (this.f6001) {
            Object obj2 = this.f6003;
            if (obj2 == null || !obj2.equals(obj)) {
                this.f6003 = obj;
                ((ʽ) this.f6005.ˈٴ).execute(new RunnableC0786(AbstractC5099.m10020(this.f6002), 8, this));
            }
        }
    }

    /* renamed from: ﹳٴ */
    public abstract Object mo4328();
}
