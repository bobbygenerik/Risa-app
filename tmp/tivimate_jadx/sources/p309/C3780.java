package p309;

import android.content.Context;
import androidx.lifecycle.ˉˆ;
import java.util.LinkedHashSet;
import java.util.Set;
import p013.C0906;
import p137.AbstractC2305;
import p223.C3050;
import p223.C3058;
import p430.AbstractC5099;

/* renamed from: ᐧᴵ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3780 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Context f14685;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f14686;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C0906 f14687;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3050 f14688;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ˉˆ f14689;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Set f14690;

    public C3780(Context context, String str, Set set, ˉˆ r6, C3050 c3050) {
        LinkedHashSet linkedHashSet;
        C3058 c3058 = new C3058(1, context, str);
        this.f14689 = r6;
        this.f14688 = c3050;
        this.f14685 = context;
        this.f14686 = str;
        this.f14687 = new C0906(c3058);
        if (set == AbstractC3781.f14691) {
            linkedHashSet = null;
        } else if (AbstractC2305.m5366(set)) {
            linkedHashSet = new LinkedHashSet(set);
        } else {
            linkedHashSet = new LinkedHashSet();
            AbstractC5099.m10023(set, linkedHashSet);
        }
        this.f14690 = linkedHashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0062, code lost:
    
        if (((android.content.SharedPreferences) r5.getValue()).getAll().isEmpty() == false) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7953(java.lang.Object r5, p316.AbstractC3902 r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof p309.C3783
            if (r0 == 0) goto L13
            r0 = r6
            ᐧᴵ.ⁱˊ r0 = (p309.C3783) r0
            int r1 = r0.f14696
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f14696 = r1
            goto L18
        L13:
            ᐧᴵ.ⁱˊ r0 = new ᐧᴵ.ⁱˊ
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f14697
            int r1 = r0.f14696
            r2 = 1
            if (r1 == 0) goto L2f
            if (r1 != r2) goto L27
            ᐧᴵ.ʽ r5 = r0.f14694
            p121.AbstractC2026.m5044(r6)
            goto L42
        L27:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L2f:
            p121.AbstractC2026.m5044(r6)
            r0.f14694 = r4
            r0.f14696 = r2
            androidx.lifecycle.ˉˆ r6 = r4.f14689
            java.lang.Object r6 = r6.ʼˎ(r5, r0)
            ᵢˎ.ﹳٴ r5 = p373.EnumC4532.f16960
            if (r6 != r5) goto L41
            return r5
        L41:
            r5 = r4
        L42:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 != 0) goto L4d
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            return r5
        L4d:
            java.util.Set r6 = r5.f14690
            ʻᵢ.ʼˎ r5 = r5.f14687
            r0 = 0
            if (r6 != 0) goto L67
            java.lang.Object r5 = r5.getValue()
            android.content.SharedPreferences r5 = (android.content.SharedPreferences) r5
            java.util.Map r5 = r5.getAll()
            boolean r5 = r5.isEmpty()
            if (r5 != 0) goto L65
            goto L8a
        L65:
            r2 = r0
            goto L8a
        L67:
            java.lang.Object r5 = r5.getValue()
            android.content.SharedPreferences r5 = (android.content.SharedPreferences) r5
            boolean r1 = r6.isEmpty()
            if (r1 == 0) goto L74
            goto L65
        L74:
            java.util.Iterator r6 = r6.iterator()
        L78:
            boolean r1 = r6.hasNext()
            if (r1 == 0) goto L65
            java.lang.Object r1 = r6.next()
            java.lang.String r1 = (java.lang.String) r1
            boolean r1 = r5.contains(r1)
            if (r1 == 0) goto L78
        L8a:
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r2)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p309.C3780.m7953(java.lang.Object, ᴵʾ.ʽ):java.lang.Object");
    }
}
