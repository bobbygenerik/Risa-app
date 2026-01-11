package p033;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import androidx.leanback.widget.ʻٴ;
import java.util.ArrayList;
import p031.InterfaceC1142;
import p057.C1514;
import p059.AbstractC1524;
import p059.C1527;
import p090.C1834;
import p173.C2656;
import p197.C2900;
import p240.C3231;
import p317.AbstractC3913;
import p340.AbstractC4240;
import p340.InterfaceC4254;
import p351.AbstractC4299;
import p351.C4296;
import p351.InterfaceC4297;
import p396.AbstractC4736;
import p396.C4738;
import p430.AbstractC5096;
import p430.AbstractC5099;
import p430.AbstractC5114;

/* renamed from: ʼﹳ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1182 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ArrayList f4592;

    public C1182(int i) {
        switch (i) {
            case 2:
                this.f4592 = new ArrayList();
                return;
            case 3:
                this.f4592 = new ArrayList();
                return;
            default:
                this.f4592 = new ArrayList();
                return;
        }
    }

    public C1182(ʻٴ r15) {
        C4738 c4738;
        C4296 c4296 = new C4296((C1527) r15.ˈٴ, 0);
        C4296 c42962 = new C4296((C1527) r15.ᴵᵔ, 1);
        C4296 c42963 = new C4296((C1527) r15.ᴵˊ, 4);
        AbstractC1524 abstractC1524 = (AbstractC1524) r15.ˊʻ;
        C4296 c42964 = new C4296(abstractC1524, 2);
        C4296 c42965 = new C4296(abstractC1524, 3);
        AbstractC4299 abstractC4299 = new AbstractC4299(abstractC1524);
        AbstractC4299 abstractC42992 = new AbstractC4299(abstractC1524);
        if (Build.VERSION.SDK_INT >= 28) {
            Context context = (Context) r15.ʽʽ;
            String str = AbstractC4736.f17887;
            c4738 = new C4738((ConnectivityManager) context.getSystemService("connectivity"));
        } else {
            c4738 = null;
        }
        this.f4592 = AbstractC5096.m9997(new InterfaceC4297[]{c4296, c42962, c42963, c42964, c42965, abstractC4299, abstractC42992, c4738});
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public InterfaceC4254 m3697(C3231 c3231) {
        ArrayList arrayList = this.f4592;
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            if (((InterfaceC4297) obj).mo8704(c3231)) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(AbstractC5114.m10060(arrayList2, 10));
        int size2 = arrayList2.size();
        int i2 = 0;
        while (i2 < size2) {
            Object obj2 = arrayList2.get(i2);
            i2++;
            arrayList3.add(((InterfaceC4297) obj2).mo8706(c3231.f12327));
        }
        return AbstractC4240.m8640(new C1834(2, (InterfaceC4254[]) AbstractC5099.m10020(arrayList3).toArray(new InterfaceC4254[0])));
    }

    /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.Object, ʼﹳ.ﾞᴵ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m3698(C1181 c1181, C2656 c2656) {
        String str;
        ArrayList arrayList = this.f4592;
        long j = c1181.f4580;
        if (j == 3221225507L) {
            Object obj = new Object();
            c2656.f10939.m6402(c2656);
            arrayList.add(obj);
            return;
        }
        if (j == 2147483693L) {
            ?? obj2 = new Object();
            int m6418 = c2656.f10937 + c2656.m6418();
            c2656.m6414(4);
            c2656.m6414(4);
            c2656.m6414(2);
            C2900 c2900 = c2656.f10939;
            obj2.f4630 = c2900.m6406(c2656);
            int m6406 = c2900.m6406(c2656);
            int m64062 = c2900.m6406(c2656);
            int m64063 = c2900.m6406(c2656);
            int m64064 = c2900.m6406(c2656);
            obj2.f4631 = c2900.m6402(c2656) == 0;
            int i = c2656.f10937;
            if (m64062 > 0) {
                c2656.f10937 = m6406 + i;
                str = c2656.m6422(m64062 / 2, AbstractC3913.f15173);
            } else {
                str = null;
            }
            c2656.f10937 = i;
            obj2.f4629 = str;
            if (m64064 > 0) {
                c2656.f10937 = i + m64063;
                c2656.m6422(m64064 / 2, AbstractC3913.f15173);
            }
            c2656.f10937 = m6418;
            arrayList.add(obj2);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public synchronized InterfaceC1142 m3699(Class cls) {
        int size = this.f4592.size();
        for (int i = 0; i < size; i++) {
            C1514 c1514 = (C1514) this.f4592.get(i);
            if (c1514.f5984.isAssignableFrom(cls)) {
                return c1514.f5983;
            }
        }
        return null;
    }
}
