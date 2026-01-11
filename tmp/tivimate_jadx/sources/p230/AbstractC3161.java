package p230;

import android.animation.Animator;
import android.view.View;
import java.util.HashMap;

/* renamed from: ˑʿ.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3161 extends AbstractC3143 {

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public static final String[] f12089 = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public int f12090 = 3;

    /* JADX WARN: Removed duplicated region for block: B:12:0x0059 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /* JADX WARN: Type inference failed for: r0v0, types: [ˑʿ.ˑٴ, java.lang.Object] */
    /* renamed from: ˈⁱ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p230.C3163 m6958(p230.C3171 r8, p230.C3171 r9) {
        /*
            ˑʿ.ˑٴ r0 = new ˑʿ.ˑٴ
            r0.<init>()
            r1 = 0
            r0.f12092 = r1
            r0.f12093 = r1
            r2 = 0
            r3 = -1
            java.lang.String r4 = "android:visibility:parent"
            java.lang.String r5 = "android:visibility:visibility"
            if (r8 == 0) goto L2f
            java.util.HashMap r6 = r8.f12115
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L2f
            java.lang.Object r7 = r6.get(r5)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r0.f12096 = r7
            java.lang.Object r6 = r6.get(r4)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r0.f12094 = r6
            goto L33
        L2f:
            r0.f12096 = r3
            r0.f12094 = r2
        L33:
            if (r9 == 0) goto L52
            java.util.HashMap r6 = r9.f12115
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L52
            java.lang.Object r2 = r6.get(r5)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            r0.f12095 = r2
            java.lang.Object r2 = r6.get(r4)
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            r0.f12097 = r2
            goto L56
        L52:
            r0.f12095 = r3
            r0.f12097 = r2
        L56:
            r2 = 1
            if (r8 == 0) goto L92
            if (r9 == 0) goto L92
            int r8 = r0.f12096
            int r9 = r0.f12095
            if (r8 != r9) goto L6c
            java.lang.Object r3 = r0.f12094
            android.view.ViewGroup r3 = (android.view.ViewGroup) r3
            java.lang.Object r4 = r0.f12097
            android.view.ViewGroup r4 = (android.view.ViewGroup) r4
            if (r3 != r4) goto L6c
            goto La7
        L6c:
            if (r8 == r9) goto L7c
            if (r8 != 0) goto L75
            r0.f12093 = r1
            r0.f12092 = r2
            return r0
        L75:
            if (r9 != 0) goto La7
            r0.f12093 = r2
            r0.f12092 = r2
            return r0
        L7c:
            java.lang.Object r8 = r0.f12097
            android.view.ViewGroup r8 = (android.view.ViewGroup) r8
            if (r8 != 0) goto L87
            r0.f12093 = r1
            r0.f12092 = r2
            return r0
        L87:
            java.lang.Object r8 = r0.f12094
            android.view.ViewGroup r8 = (android.view.ViewGroup) r8
            if (r8 != 0) goto La7
            r0.f12093 = r2
            r0.f12092 = r2
            return r0
        L92:
            if (r8 != 0) goto L9d
            int r8 = r0.f12095
            if (r8 != 0) goto L9d
            r0.f12093 = r2
            r0.f12092 = r2
            return r0
        L9d:
            if (r9 != 0) goto La7
            int r8 = r0.f12096
            if (r8 != 0) goto La7
            r0.f12093 = r1
            r0.f12092 = r2
        La7:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p230.AbstractC3161.m6958(ˑʿ.ᴵᵔ, ˑʿ.ᴵᵔ):ˑʿ.ˑٴ");
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static void m6959(C3171 c3171) {
        View view = c3171.f12114;
        int visibility = view.getVisibility();
        HashMap hashMap = c3171.f12115;
        hashMap.put("android:visibility:visibility", Integer.valueOf(visibility));
        hashMap.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        hashMap.put("android:visibility:screenLocation", iArr);
    }

    @Override // p230.AbstractC3143
    /* renamed from: ʼˎ */
    public void mo6898(C3171 c3171) {
        m6959(c3171);
    }

    @Override // p230.AbstractC3143
    /* renamed from: ʾˋ */
    public final boolean mo6901(C3171 c3171, C3171 c31712) {
        if (c3171 == null && c31712 == null) {
            return false;
        }
        if (c3171 != null && c31712 != null && c31712.f12115.containsKey("android:visibility:visibility") != c3171.f12115.containsKey("android:visibility:visibility")) {
            return false;
        }
        C3163 m6958 = m6958(c3171, c31712);
        if (m6958.f12092) {
            return m6958.f12096 == 0 || m6958.f12095 == 0;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
    
        if (m6958(m6912(r3, false), m6902(r3, false)).f12092 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01de  */
    @Override // p230.AbstractC3143
    /* renamed from: ˉʿ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator mo6907(android.view.ViewGroup r24, p230.C3171 r25, p230.C3171 r26) {
        /*
            Method dump skipped, instructions count: 688
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p230.AbstractC3161.mo6907(android.view.ViewGroup, ˑʿ.ᴵᵔ, ˑʿ.ᴵᵔ):android.animation.Animator");
    }

    /* renamed from: ˉـ */
    public abstract Animator mo6937(View view, C3171 c3171, C3171 c31712);

    @Override // p230.AbstractC3143
    /* renamed from: ˑﹳ */
    public final void mo6914(C3171 c3171) {
        m6959(c3171);
    }

    @Override // p230.AbstractC3143
    /* renamed from: ـˆ */
    public final String[] mo6916() {
        return f12089;
    }

    /* renamed from: ᴵˑ */
    public abstract Animator mo6938(View view, C3171 c3171);
}
