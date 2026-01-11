package p371;

import androidx.leanback.widget.ʻٴ;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import p029.AbstractC1127;
import p029.C1121;
import p029.C1124;
import p029.InterfaceC1130;
import p035.AbstractC1220;
import p152.AbstractC2444;
import p164.C2571;
import p271.AbstractC3480;
import p366.C4483;
import p430.AbstractC5099;
import p430.C5097;
import p435.AbstractC5143;
import p435.AbstractC5154;

/* renamed from: ᵢˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4513 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʻٴ f16875;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C2571 f16874 = new C2571(Arrays.copyOf(new byte[]{42}, 1));

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final List f16872 = Collections.singletonList("*");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4513 f16873 = new C4513(new ʻٴ(13));

    public C4513(ʻٴ r1) {
        this.f16875 = r1;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static List m9085(String str) {
        List m10128 = AbstractC5143.m10128(str, new char[]{'.'});
        if (!AbstractC2444.m5562(AbstractC5099.m10028(m10128), "")) {
            return m10128;
        }
        int size = m10128.size() - 1;
        if (size < 0) {
            size = 0;
        }
        if (size < 0) {
            throw new IllegalArgumentException(AbstractC1220.m3773(size, "Requested element count ", " is less than zero.").toString());
        }
        C5097 c5097 = C5097.f19202;
        if (size == 0) {
            return c5097;
        }
        if (size >= m10128.size()) {
            return AbstractC5099.m10020(m10128);
        }
        if (size == 1) {
            return Collections.singletonList(AbstractC5099.m10029(m10128));
        }
        ArrayList arrayList = new ArrayList(size);
        Iterator it = m10128.iterator();
        int i = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i++;
            if (i == size) {
                break;
            }
        }
        int size2 = arrayList.size();
        return size2 != 0 ? size2 != 1 ? arrayList : Collections.singletonList(arrayList.get(0)) : c5097;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m9086(String str) {
        String str2;
        String str3;
        String str4;
        int size;
        int size2;
        List m9085 = m9085(IDN.toUnicode(str));
        List list = C5097.f19202;
        ʻٴ r2 = this.f16875;
        if (((AtomicBoolean) r2.ʽʽ).get() || !((AtomicBoolean) r2.ʽʽ).compareAndSet(false, true)) {
            try {
                ((CountDownLatch) r2.ˈٴ).await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            boolean z = false;
            while (true) {
                try {
                    try {
                        try {
                            r2.ᵔﹳ();
                            break;
                        } catch (IOException e) {
                            AbstractC3480 abstractC3480 = AbstractC3480.f13658;
                            AbstractC3480.f13658.mo7402("Failed to read public suffix list", 5, e);
                            if (z) {
                            }
                        }
                    } catch (InterruptedIOException unused2) {
                        Thread.interrupted();
                        z = true;
                    }
                } finally {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
        if (((C2571) r2.ᴵᵔ) == null) {
            StringBuilder sb = new StringBuilder("Unable to load ");
            sb.append(r2.ᴵˊ);
            sb.append(" resource.");
            throw new IllegalStateException(sb.toString().toString());
        }
        int size3 = m9085.size();
        C2571[] c2571Arr = new C2571[size3];
        for (int i = 0; i < size3; i++) {
            String str5 = (String) m9085.get(i);
            C2571 c2571 = new C2571(str5.getBytes(AbstractC5154.f19435));
            c2571.f9766 = str5;
            c2571Arr[i] = c2571;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= size3) {
                str2 = null;
                break;
            }
            C2571 c25712 = (C2571) this.f16875.ᴵᵔ;
            if (c25712 == null) {
                c25712 = null;
            }
            str2 = C4483.m9043(c25712, c2571Arr, i2);
            if (str2 != null) {
                break;
            }
            i2++;
        }
        if (size3 > 1) {
            C2571[] c2571Arr2 = (C2571[]) c2571Arr.clone();
            int length = c2571Arr2.length - 1;
            for (int i3 = 0; i3 < length; i3++) {
                c2571Arr2[i3] = f16874;
                C2571 c25713 = (C2571) this.f16875.ᴵᵔ;
                if (c25713 == null) {
                    c25713 = null;
                }
                str3 = C4483.m9043(c25713, c2571Arr2, i3);
                if (str3 != null) {
                    break;
                }
            }
        }
        str3 = null;
        if (str3 != null) {
            int i4 = size3 - 1;
            for (int i5 = 0; i5 < i4; i5++) {
                C2571 c25714 = (C2571) this.f16875.ˊʻ;
                if (c25714 == null) {
                    c25714 = null;
                }
                str4 = C4483.m9043(c25714, c2571Arr, i5);
                if (str4 != null) {
                    break;
                }
            }
        }
        str4 = null;
        if (str4 != null) {
            list = AbstractC5143.m10128("!".concat(str4), new char[]{'.'});
        } else if (str2 == null && str3 == null) {
            list = f16872;
        } else {
            List m10128 = str2 != null ? AbstractC5143.m10128(str2, new char[]{'.'}) : list;
            if (str3 != null) {
                list = AbstractC5143.m10128(str3, new char[]{'.'});
            }
            if (m10128.size() > list.size()) {
                list = m10128;
            }
        }
        if (m9085.size() == list.size() && ((String) list.get(0)).charAt(0) != '!') {
            return null;
        }
        if (((String) list.get(0)).charAt(0) == '!') {
            size = m9085.size();
            size2 = list.size();
        } else {
            size = m9085.size();
            size2 = list.size() + 1;
        }
        int i6 = size - size2;
        InterfaceC1130 c1124 = new C1124(2, m9085(str));
        if (i6 < 0) {
            throw new IllegalArgumentException(AbstractC1220.m3773(i6, "Requested element count ", " is less than zero.").toString());
        }
        if (i6 != 0) {
            c1124 = new C1121(c1124, i6);
        }
        return AbstractC1127.m3553(c1124, ".");
    }
}
