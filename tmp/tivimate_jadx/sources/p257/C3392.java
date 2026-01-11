package p257;

import android.graphics.Bitmap;
import android.os.Build;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import p010.AbstractC0844;
import p087.AbstractC1746;
import p404.C4790;
import ʽⁱ.ᵎﹶ;

/* renamed from: יᐧ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3392 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Bitmap.Config[] f13243;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Bitmap.Config[] f13244;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final Bitmap.Config[] f13245;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final Bitmap.Config[] f13246;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final Bitmap.Config[] f13247;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3391 f13250 = new C3391(1);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4790 f13249 = new C4790(29);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashMap f13248 = new HashMap();

    static {
        Bitmap.Config config;
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            int length = configArr.length - 1;
            config = Bitmap.Config.RGBA_F16;
            configArr[length] = config;
        }
        f13243 = configArr;
        f13244 = configArr;
        f13247 = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f13245 = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f13246 = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m7275(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    public final String toString() {
        StringBuilder m3020 = AbstractC0844.m3020("SizeConfigStrategy{groupedMap=");
        m3020.append(this.f13249);
        m3020.append(", sortedSizes=(");
        HashMap hashMap = this.f13248;
        for (Map.Entry entry : hashMap.entrySet()) {
            m3020.append(entry.getKey());
            m3020.append('[');
            m3020.append(entry.getValue());
            m3020.append("], ");
        }
        if (!hashMap.isEmpty()) {
            m3020.replace(m3020.length() - 2, m3020.length(), "");
        }
        m3020.append(")}");
        return m3020.toString();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final NavigableMap m7276(Bitmap.Config config) {
        HashMap hashMap = this.f13248;
        NavigableMap navigableMap = (NavigableMap) hashMap.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        hashMap.put(config, treeMap);
        return treeMap;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m7277(Bitmap bitmap) {
        int m4698 = AbstractC1746.m4698(bitmap);
        Bitmap.Config config = bitmap.getConfig();
        C3391 c3391 = this.f13250;
        InterfaceC3394 interfaceC3394 = (InterfaceC3394) ((ArrayDeque) ((ᵎﹶ) c3391).ʾˋ).poll();
        if (interfaceC3394 == null) {
            interfaceC3394 = c3391.m7274();
        }
        C3389 c3389 = (C3389) interfaceC3394;
        c3389.f13237 = m4698;
        c3389.f13236 = config;
        this.f13249.m9570(c3389, bitmap);
        NavigableMap m7276 = m7276(bitmap.getConfig());
        Integer num = (Integer) m7276.get(Integer.valueOf(c3389.f13237));
        m7276.put(Integer.valueOf(c3389.f13237), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6 A[EDGE_INSN: B:34:0x00a6->B:20:0x00a6 BREAK  A[LOOP:0: B:10:0x0058->B:32:0x00a3], SYNTHETIC] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap m7278(int r11, int r12, android.graphics.Bitmap.Config r13) {
        /*
            r10 = this;
            int r0 = r11 * r12
            int r1 = p087.AbstractC1746.m4699(r13)
            int r1 = r1 * r0
            יᐧ.ˑﹳ r0 = r10.f13250
            java.lang.Object r2 = r0.ʾˋ
            java.util.ArrayDeque r2 = (java.util.ArrayDeque) r2
            java.lang.Object r2 = r2.poll()
            יᐧ.ᵔᵢ r2 = (p257.InterfaceC3394) r2
            if (r2 != 0) goto L19
            יᐧ.ᵔᵢ r2 = r0.m7274()
        L19:
            יᐧ.ˆʾ r2 = (p257.C3389) r2
            r2.f13237 = r1
            r2.f13236 = r13
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 26
            r5 = 0
            if (r3 < r4) goto L33
            android.graphics.Bitmap$Config r3 = p256.C3375.m7244()
            boolean r3 = r3.equals(r13)
            if (r3 == 0) goto L33
            android.graphics.Bitmap$Config[] r3 = p257.C3392.f13244
            goto L57
        L33:
            int[] r3 = p257.AbstractC3387.f13231
            int r4 = r13.ordinal()
            r3 = r3[r4]
            r4 = 1
            if (r3 == r4) goto L55
            r6 = 2
            if (r3 == r6) goto L52
            r6 = 3
            if (r3 == r6) goto L4f
            r6 = 4
            if (r3 == r6) goto L4c
            android.graphics.Bitmap$Config[] r3 = new android.graphics.Bitmap.Config[r4]
            r3[r5] = r13
            goto L57
        L4c:
            android.graphics.Bitmap$Config[] r3 = p257.C3392.f13246
            goto L57
        L4f:
            android.graphics.Bitmap$Config[] r3 = p257.C3392.f13245
            goto L57
        L52:
            android.graphics.Bitmap$Config[] r3 = p257.C3392.f13247
            goto L57
        L55:
            android.graphics.Bitmap$Config[] r3 = p257.C3392.f13243
        L57:
            int r4 = r3.length
        L58:
            if (r5 >= r4) goto La6
            r6 = r3[r5]
            java.util.NavigableMap r7 = r10.m7276(r6)
            java.lang.Integer r8 = java.lang.Integer.valueOf(r1)
            java.lang.Object r7 = r7.ceilingKey(r8)
            java.lang.Integer r7 = (java.lang.Integer) r7
            if (r7 == 0) goto La3
            int r8 = r7.intValue()
            int r9 = r1 * 8
            if (r8 > r9) goto La3
            int r3 = r7.intValue()
            if (r3 != r1) goto L85
            if (r6 != 0) goto L7f
            if (r13 == 0) goto La6
            goto L85
        L7f:
            boolean r1 = r6.equals(r13)
            if (r1 != 0) goto La6
        L85:
            r0.ˎᐧ(r2)
            int r1 = r7.intValue()
            java.lang.Object r2 = r0.ʾˋ
            java.util.ArrayDeque r2 = (java.util.ArrayDeque) r2
            java.lang.Object r2 = r2.poll()
            יᐧ.ᵔᵢ r2 = (p257.InterfaceC3394) r2
            if (r2 != 0) goto L9c
            יᐧ.ᵔᵢ r2 = r0.m7274()
        L9c:
            יᐧ.ˆʾ r2 = (p257.C3389) r2
            r2.f13237 = r1
            r2.f13236 = r6
            goto La6
        La3:
            int r5 = r5 + 1
            goto L58
        La6:
            ﹳʽ.ˊʻ r0 = r10.f13249
            java.lang.Object r0 = r0.m9575(r2)
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            if (r0 == 0) goto Lbc
            int r1 = r2.f13237
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r10.m7279(r1, r0)
            r0.reconfigure(r11, r12, r13)
        Lbc:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p257.C3392.m7278(int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7279(Integer num, Bitmap bitmap) {
        NavigableMap m7276 = m7276(bitmap.getConfig());
        Integer num2 = (Integer) m7276.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                m7276.remove(num);
                return;
            } else {
                m7276.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + m7275(AbstractC1746.m4698(bitmap), bitmap.getConfig()) + ", this: " + this);
    }
}
