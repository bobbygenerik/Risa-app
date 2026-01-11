package p179;

import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Parcel;
import android.view.View;
import androidx.leanback.widget.C0095;
import androidx.leanback.widget.VerticalGridView;
import com.google.android.gms.internal.measurement.AbstractC0472;
import com.google.android.gms.internal.measurement.C0287;
import com.google.android.gms.internal.measurement.InterfaceC0272;
import com.google.android.gms.tasks.RuntimeExecutionException;
import j$.util.DesugarCollections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import p013.C0922;
import p027.C1082;
import p027.C1102;
import p033.C1182;
import p087.AbstractC1746;
import p126.InterfaceC2136;
import p143.AbstractC2392;
import p152.AbstractC2444;
import p220.AbstractC3033;
import p220.C3027;
import p220.C3029;
import p220.C3031;
import p220.InterfaceC3026;
import p220.InterfaceC3028;
import p220.InterfaceC3030;
import p220.InterfaceC3034;
import p220.InterfaceC3037;
import p221.ExecutorC3040;
import p223.C3056;
import p229.AbstractComponentCallbacksC3123;
import p240.C3231;
import p265.C3444;
import p279.ViewTreeObserverOnDrawListenerC3544;
import p296.AbstractC3659;
import p296.InterfaceC3684;
import p301.InterfaceC3701;
import p311.C3796;
import p319.C3936;
import p322.C3965;
import p322.C3966;
import p324.AbstractC3999;
import p324.AbstractC4017;
import p324.C4014;
import p324.C4030;
import p352.C4302;
import p366.C4461;
import p366.C4486;
import p369.InterfaceC4507;
import p396.AbstractC4736;
import p409.C4840;
import p409.C4844;
import p409.C4855;
import p430.AbstractC5099;
import p447.AbstractC5328;
import p447.BinderC5223;
import p447.C5215;
import p447.C5217;
import p447.C5287;
import p447.C5322;
import p447.C5337;
import p447.C5344;
import p447.InterfaceC5296;
import p447.ServiceConnectionC5280;
import ʼˋ.ᵔʾ;
import ʼⁱ.ᵎʿ;
import ʼⁱ.ᵎⁱ;
import ʿʿ.ﹳٴ;
import ʿˋ.ˋᵔ;
import ˉᵎ.ⁱˊ;
import ٴˊ.ᵔᵢ;
import ᐧˈ.ᵎﹶ;
import ᐧﹳ.ʽ;
import ᴵʽ.ˉـ;
import ᴵʽ.ـˏ;
import ᵔʻ.ʼʼ;
import ᵔʻ.ᵎˊ;
import ᵔˋ.ʻٴ;
import ᵔˋ.ˆʾ;
import ᵔˋ.ᵔי;
import ᵢʿ.ʽﹳ;

/* renamed from: ˋˋ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2689 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f10250;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f10251;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f10252;

    public /* synthetic */ RunnableC2689(Object obj, int i, Object obj2) {
        this.f10251 = i;
        this.f10250 = obj;
        this.f10252 = obj2;
    }

    public /* synthetic */ RunnableC2689(Object obj, Object obj2, int i, boolean z) {
        this.f10251 = i;
        this.f10252 = obj;
        this.f10250 = obj2;
    }

    public RunnableC2689(ExecutorC3040 executorC3040) {
        this.f10251 = 9;
        this.f10250 = executorC3040;
    }

    public RunnableC2689(ServiceConnectionC5280 serviceConnectionC5280, InterfaceC0272 interfaceC0272, ServiceConnectionC5280 serviceConnectionC52802) {
        this.f10251 = 27;
        this.f10252 = interfaceC0272;
        this.f10250 = serviceConnectionC5280;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m6040() {
        try {
            m6045();
        } catch (Error e) {
            synchronized (((ExecutorC3040) this.f10250).f11573) {
                ((ExecutorC3040) this.f10250).f11570 = 1;
                throw e;
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m6041() {
        C3231 m7304 = ((C4302) this.f10250).f15933.f13483.m7304((String) this.f10252);
        if (m7304 == null || AbstractC2444.m5562(C3966.f15288, m7304.f12327)) {
            return;
        }
        synchronized (((C4302) this.f10250).f15932) {
            ((C4302) this.f10250).f15936.put(ⁱˊ.ʼᐧ(m7304), m7304);
            C4302 c4302 = (C4302) this.f10250;
            C1182 c1182 = c4302.f15935;
            AbstractC4017 abstractC4017 = (AbstractC4017) c4302.f15938.ᴵˊ;
            String str = AbstractC4736.f17887;
            ((C4302) this.f10250).f15937.put(ⁱˊ.ʼᐧ(m7304), AbstractC3999.m8168(AbstractC3999.m8179(abstractC4017), null, new ᵔʾ(c1182, m7304, c4302, (InterfaceC2136) null, 23), 3));
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:18|(1:20)(9:267|268|269|270|(1:272)(2:293|(4:295|274|275|(25:277|(1:279)(1:291)|280|281|283|284|285|22|23|(2:25|(2:27|(2:29|(2:31|(2:33|(2:35|(1:37)(1:260))(1:261))(1:262))(1:263))(1:264))(1:265))(1:266)|38|39|40|(1:42)(1:257)|43|(1:45)|47|(1:49)(2:254|(7:256|(3:246|247|(1:249)(1:250))|(5:53|(1:55)(3:237|(3:240|(1:242)(1:243)|238)|244)|(1:57)(1:236)|58|(9:60|(1:62)(1:233)|63|(1:65)|66|(1:68)(1:232)|69|(1:71)|(32:230|73|(1:75)|76|(2:226|(19:228|90|(1:92)(1:222)|93|(1:95)|96|(2:200|(2:206|(2:213|(2:214|(1:221)(2:216|(2:218|219)(1:220))))(0))(1:205))(1:100)|101|(3:196|(1:198)|199)|105|(1:107)|108|(1:112)|113|(3:115|(7:117|(1:119)(1:152)|120|(1:122)|123|(4:127|(1:129)|130|(1:132))|133)(1:153)|134)(10:154|(4:156|(2:159|(6:161|(1:163)(1:193)|164|(1:166)|167|168))|194|168)(1:195)|169|(1:171)|172|173|174|175|176|(5:178|(1:180)(1:188)|(1:184)|(1:186)|187))|135|(3:137|(1:139)(1:148)|(5:141|(1:143)|144|(1:146)|147))|149|150))(1:79)|80|(1:(1:223)(26:89|90|(0)(0)|93|(0)|96|(1:98)|200|(1:203)|206|(4:209|211|213|(3:214|(0)(0)|220))(0)|101|(1:103)|196|(0)|199|105|(0)|108|(2:110|112)|113|(0)(0)|135|(0)|149|150))(1:225)|224|(0)(0)|93|(0)|96|(0)|200|(0)|206|(0)(0)|101|(0)|196|(0)|199|105|(0)|108|(0)|113|(0)(0)|135|(0)|149|150)(32:231|76|(0)|226|(0)|80|(0)(0)|224|(0)(0)|93|(0)|96|(0)|200|(0)|206|(0)(0)|101|(0)|196|(0)|199|105|(0)|108|(0)|113|(0)(0)|135|(0)|149|150))(2:234|235))|245|(0)(0)|58|(0)(0)))|50|(0)|(0)|245|(0)(0)|58|(0)(0))))|273|274|275|(0))|21|22|23|(0)(0)|38|39|40|(0)(0)|43|(0)|47|(0)(0)|50|(0)|(0)|245|(0)(0)|58|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(8:267|(2:268|269)|270|(1:272)(2:293|(4:295|274|275|(25:277|(1:279)(1:291)|280|281|283|284|285|22|23|(2:25|(2:27|(2:29|(2:31|(2:33|(2:35|(1:37)(1:260))(1:261))(1:262))(1:263))(1:264))(1:265))(1:266)|38|39|40|(1:42)(1:257)|43|(1:45)|47|(1:49)(2:254|(7:256|(3:246|247|(1:249)(1:250))|(5:53|(1:55)(3:237|(3:240|(1:242)(1:243)|238)|244)|(1:57)(1:236)|58|(9:60|(1:62)(1:233)|63|(1:65)|66|(1:68)(1:232)|69|(1:71)|(32:230|73|(1:75)|76|(2:226|(19:228|90|(1:92)(1:222)|93|(1:95)|96|(2:200|(2:206|(2:213|(2:214|(1:221)(2:216|(2:218|219)(1:220))))(0))(1:205))(1:100)|101|(3:196|(1:198)|199)|105|(1:107)|108|(1:112)|113|(3:115|(7:117|(1:119)(1:152)|120|(1:122)|123|(4:127|(1:129)|130|(1:132))|133)(1:153)|134)(10:154|(4:156|(2:159|(6:161|(1:163)(1:193)|164|(1:166)|167|168))|194|168)(1:195)|169|(1:171)|172|173|174|175|176|(5:178|(1:180)(1:188)|(1:184)|(1:186)|187))|135|(3:137|(1:139)(1:148)|(5:141|(1:143)|144|(1:146)|147))|149|150))(1:79)|80|(1:(1:223)(26:89|90|(0)(0)|93|(0)|96|(1:98)|200|(1:203)|206|(4:209|211|213|(3:214|(0)(0)|220))(0)|101|(1:103)|196|(0)|199|105|(0)|108|(2:110|112)|113|(0)(0)|135|(0)|149|150))(1:225)|224|(0)(0)|93|(0)|96|(0)|200|(0)|206|(0)(0)|101|(0)|196|(0)|199|105|(0)|108|(0)|113|(0)(0)|135|(0)|149|150)(32:231|76|(0)|226|(0)|80|(0)(0)|224|(0)(0)|93|(0)|96|(0)|200|(0)|206|(0)(0)|101|(0)|196|(0)|199|105|(0)|108|(0)|113|(0)(0)|135|(0)|149|150))(2:234|235))|245|(0)(0)|58|(0)(0)))|50|(0)|(0)|245|(0)(0)|58|(0)(0))))|273|274|275|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x025b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x025c, code lost:
    
        p447.C5322.m10556(r13);
        r13.f20343.m10214(p447.C5344.m10722(r14), r0, "Fetching Google App Id failed with exception. appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0198, code lost:
    
        r5 = "Unknown";
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x03de, code lost:
    
        if (r10.m10680() == 1) goto L132;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x058b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x05f6  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x07eb  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x067d  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x05af  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x052c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0550 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0574  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0583 A[EDGE_INSN: B:221:0x0583->B:101:0x0583 BREAK  A[LOOP:0: B:214:0x056e->B:220:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0856  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x029d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:254:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x017b A[Catch: NameNotFoundException -> 0x0198, TryCatch #1 {NameNotFoundException -> 0x0198, blocks: (B:275:0x0170, B:277:0x017b, B:279:0x0187), top: B:274:0x0170 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x024c A[Catch: IllegalStateException -> 0x025b, TRY_LEAVE, TryCatch #4 {IllegalStateException -> 0x025b, blocks: (B:40:0x023a, B:43:0x0248, B:45:0x024c), top: B:39:0x023a }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x04ef  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x04ff  */
    /* JADX WARN: Type inference failed for: r0v39, types: [ﹶﾞ.ٴᵢ, ﹶﾞ.ﹳᵢ, ʽⁱ.ᵎﹶ] */
    /* JADX WARN: Type inference failed for: r0v48, types: [ﹶﾞ.ﾞˋ] */
    /* JADX WARN: Type inference failed for: r2v3, types: [ﹶﾞ.ʼᐧ, ﹶﾞ.ˎᐧ] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m6042() {
        /*
            Method dump skipped, instructions count: 2163
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p179.RunnableC2689.m6042():void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final void m6043() {
        synchronized (((C3031) this.f10250).f11556) {
            ((InterfaceC3030) ((C3031) this.f10250).f11558).mo6555(((C3029) this.f10252).m6565());
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m6044() {
        synchronized (((C3031) this.f10250).f11556) {
            InterfaceC3028 interfaceC3028 = (InterfaceC3028) ((C3031) this.f10250).f11558;
            Exception m6563 = ((C3029) this.f10252).m6563();
            AbstractC3659.m7687(m6563);
            interfaceC3028.mo4588(m6563);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232;
        ᵔי r2;
        AbstractC2727 adapter;
        InterfaceC3684 interfaceC3684;
        switch (this.f10251) {
            case 0:
                RunnableC2708 runnableC2708 = (RunnableC2708) this.f10250;
                C2733 c2733 = (C2733) runnableC2708.f10303;
                if (c2733.f10435 == runnableC2708.f10301) {
                    List list = (List) runnableC2708.f10299;
                    C2682 c2682 = (C2682) this.f10252;
                    c2733.f10434 = list;
                    c2733.f10438 = DesugarCollections.unmodifiableList(list);
                    c2682.m6030(c2733.f10437);
                    c2733.m6132();
                    return;
                }
                return;
            case 1:
                RunnableC2708 runnableC27082 = (RunnableC2708) this.f10250;
                C2672 c2672 = (C2672) runnableC27082.f10303;
                if (c2672.f10169 == runnableC27082.f10301) {
                    List list2 = (List) runnableC27082.f10299;
                    C2682 c26822 = (C2682) this.f10252;
                    c2672.f10168 = list2;
                    c2672.f10172 = DesugarCollections.unmodifiableList(list2);
                    c26822.m6030(c2672.f10171);
                    c2672.m6003();
                    return;
                }
                return;
            case 2:
                if (((C3029) this.f10252).f11551) {
                    ((C3027) this.f10250).f11548.m6566();
                    return;
                }
                try {
                    ((C3027) this.f10250).f11548.m6562(((C3027) this.f10250).f11546.mo5197((C3029) this.f10252));
                    return;
                } catch (RuntimeExecutionException e) {
                    if (e.getCause() instanceof Exception) {
                        ((C3027) this.f10250).f11548.m6560((Exception) e.getCause());
                        return;
                    } else {
                        ((C3027) this.f10250).f11548.m6560(e);
                        return;
                    }
                } catch (Exception e2) {
                    ((C3027) this.f10250).f11548.m6560(e2);
                    return;
                }
            case 3:
                C3027 c3027 = (C3027) this.f10250;
                C3029 c3029 = c3027.f11548;
                try {
                    C3029 c30292 = (C3029) c3027.f11546.mo5197((C3029) this.f10252);
                    if (c30292 == null) {
                        c3027.mo4588(new NullPointerException("Continuation returned null"));
                        return;
                    }
                    ﹳٴ r1 = AbstractC3033.f11561;
                    c30292.m6570(r1, c3027);
                    c30292.m6571(r1, c3027);
                    c30292.f11553.m1588(new C3031((Executor) r1, (InterfaceC3034) c3027));
                    c30292.m6568();
                    return;
                } catch (RuntimeExecutionException e3) {
                    if (e3.getCause() instanceof Exception) {
                        c3029.m6560((Exception) e3.getCause());
                        return;
                    } else {
                        c3029.m6560(e3);
                        return;
                    }
                } catch (Exception e4) {
                    c3029.m6560(e4);
                    return;
                }
            case 4:
                synchronized (((C3031) this.f10250).f11556) {
                    ((InterfaceC3026) ((C3031) this.f10250).f11558).mo6558((C3029) this.f10252);
                }
                return;
            case 5:
                m6044();
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                m6043();
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                C3031 c3031 = (C3031) this.f10250;
                try {
                    C3029 mo6579 = ((InterfaceC3037) c3031.f11556).mo6579(((C3029) this.f10252).m6565());
                    ﹳٴ r22 = AbstractC3033.f11561;
                    mo6579.m6570(r22, c3031);
                    mo6579.m6571(r22, c3031);
                    mo6579.f11553.m1588(new C3031((Executor) r22, (InterfaceC3034) c3031));
                    mo6579.m6568();
                    return;
                } catch (RuntimeExecutionException e5) {
                    if (e5.getCause() instanceof Exception) {
                        c3031.mo4588((Exception) e5.getCause());
                        return;
                    } else {
                        c3031.mo4588(e5);
                        return;
                    }
                } catch (CancellationException unused) {
                    c3031.mo6556();
                    return;
                } catch (Exception e6) {
                    c3031.mo4588(e6);
                    return;
                }
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                C3029 c30293 = (C3029) this.f10252;
                try {
                    c30293.m6562(((Callable) this.f10250).call());
                    return;
                } catch (Exception e7) {
                    c30293.m6560(e7);
                    return;
                } catch (Throwable th) {
                    c30293.m6560(new RuntimeException(th));
                    return;
                }
            case 9:
                m6040();
                return;
            case 10:
                if (((יᵎ.ﹳٴ) this.f10252).f11908 != null) {
                    ((יᵎ.ﹳٴ) this.f10250).ˊﹳ();
                    return;
                }
                return;
            case 11:
                C3965 m8127 = C3965.m8127();
                String str = C3444.f13523;
                StringBuilder sb = new StringBuilder("Scheduling work ");
                C3231 c3231 = (C3231) this.f10252;
                sb.append(c3231.f12341);
                m8127.m8133(str, sb.toString());
                ((C3444) this.f10250).f13527.mo7319(c3231);
                return;
            case 12:
                C4461 m9009 = C4461.m9009();
                m9009.getClass();
                AbstractC1746.m4704();
                m9009.f16694.set(true);
                ((ViewTreeObserverOnDrawListenerC3544) this.f10250).f13893.f13896 = true;
                ((ViewTreeObserverOnDrawListenerC3544) this.f10250).f13892.getViewTreeObserver().removeOnDrawListener((ViewTreeObserverOnDrawListenerC3544) this.f10252);
                ((ViewTreeObserverOnDrawListenerC3544) this.f10250).f13893.f13895.clear();
                return;
            case 13:
                if (((AbstractComponentCallbacksC3123) this.f10252).f11908 == null || (abstractComponentCallbacksC3123 = ((ᵔᵢ) this.f10250).f11928) == null || (abstractComponentCallbacksC31232 = abstractComponentCallbacksC3123.f11928) == null) {
                    return;
                }
                abstractComponentCallbacksC31232.m6793();
                return;
            case 14:
                if (((ᵎﹶ) this.f10252).f11908 != null) {
                    ᵎﹶ r0 = (ᵎﹶ) this.f10250;
                    r0.m420((C0095) AbstractC5099.m10021(r0.f536));
                    return;
                }
                return;
            case 15:
                ⁱˊ.ˈٴ((C3796) this.f10252).mo3549(new C0922((Throwable) this.f10250));
                return;
            case 16:
                ˉـ r02 = (ˉـ) this.f10250;
                if (((AbstractComponentCallbacksC3123) this.f10252).f11908 == null) {
                    return;
                }
                InterfaceC3701[] interfaceC3701Arr = ˉـ.ˑˆ;
                VerticalGridView verticalGridView = r02.ʽᐧ().ʽ;
                int i = 0;
                while (true) {
                    if (!(i < verticalGridView.getChildCount())) {
                        return;
                    }
                    int i2 = i + 1;
                    View childAt = verticalGridView.getChildAt(i);
                    if (childAt == null) {
                        throw new IndexOutOfBoundsException();
                    }
                    ـˏ m946 = r02.ʽᐧ().ʽ.m946(childAt);
                    ـˏ r5 = m946 instanceof ـˏ ? m946 : null;
                    if (r5 != null) {
                        r5.ʾˋ();
                    }
                    i = i2;
                }
            case 17:
                ((C4030) this.f10250).m8215((C4014) this.f10252);
                return;
            case 18:
                if (((AbstractComponentCallbacksC3123) this.f10252).f11908 != null) {
                    ᵎˊ r03 = (ᵎˊ) this.f10250;
                    InterfaceC3701[] interfaceC3701Arr2 = ᵎˊ.ˋـ;
                    ˋᵔ.ʻᵎ(r03.ʽᐧ().ﾞᴵ, ʼʼ.ʾˋ);
                    return;
                }
                return;
            case 19:
                ᵎˊ r04 = (ᵎˊ) this.f10250;
                if (((ᵎˊ) this.f10252).f11908 != null) {
                    r04.יⁱ();
                    r04.ʽᐧ().ﾞᴵ.requestFocus();
                    return;
                }
                return;
            case 20:
                m6041();
                return;
            case 21:
                if (((ˆʾ) this.f10252).f11908 != null) {
                    ˆʾ r05 = (ˆʾ) this.f10250;
                    InterfaceC3701[] interfaceC3701Arr3 = ˆʾ.ﹶʽ;
                    if (r05.f11908 != null) {
                        ᵎⁱ r12 = r05.ʾˏ();
                        if (r12.f11908 != null && (adapter = r12.ʽᐧ().ⁱˊ.getAdapter()) != null) {
                            adapter.m6118();
                        }
                        ʻٴ r13 = r05.ᐧˏ();
                        if (r13.f11908 != null) {
                            r13.ˑˉ();
                            AbstractC2727 adapter2 = r13.ⁱʾ().ˈ.getAdapter();
                            if (adapter2 != null) {
                                adapter2.m6118();
                            }
                        }
                        ᵔˋ.ᵎˊ r14 = r05.ˑˉ();
                        if (r14.f11908 != null && (r2 = (ᵔי) r14.ʾˏ().ⁱˊ.m684()) != null) {
                            r14.ˑˉ(r2.ﹳٴ, r2.ⁱˊ);
                            ᵔˋ.ᵎˊ.ᵢי(r14.ˎᵎ().ʼˎ);
                            ᵔˋ.ᵎˊ.ᵢי(r14.ˎᵎ().ᵔᵢ);
                            AbstractC2727 adapter3 = r14.ˎᵎ().ʼˎ.getAdapter();
                            if (adapter3 != null) {
                                adapter3.m6118();
                            }
                            AbstractC2727 adapter4 = r14.ˎᵎ().ᵔᵢ.getAdapter();
                            if (adapter4 != null) {
                                adapter4.m6118();
                            }
                        }
                        ᵎʿ r06 = r05.ᵢי();
                        if (r06.f11908 != null) {
                            r06.ˎᵎ();
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 22:
                ʽ r07 = (ʽ) this.f10252;
                Typeface typeface = (Typeface) this.f10250;
                AbstractC2392 abstractC2392 = (AbstractC2392) r07.ᴵˊ;
                if (abstractC2392 != null) {
                    abstractC2392.mo5308(typeface);
                    return;
                }
                return;
            case 23:
                ((C1082) this.f10252).accept(this.f10250);
                return;
            case 24:
                if (((ʽﹳ) this.f10252).f11908 != null) {
                    ʽﹳ r08 = (ʽﹳ) this.f10250;
                    r08.m420((C0095) AbstractC5099.m10021(r08.f536));
                    return;
                }
                return;
            case 25:
                C3936 c3936 = (C3936) this.f10252;
                C1102 c1102 = (C1102) this.f10250;
                InterfaceC4507 interfaceC4507 = (InterfaceC4507) c1102.f4302;
                C4840 c4840 = (C4840) ((C4844) c1102.f4301).f18178.get((C4855) c1102.f4298);
                if (c4840 == null) {
                    return;
                }
                if (c3936.f15226 != 0) {
                    c4840.m9640(c3936, null);
                    return;
                }
                c1102.f4299 = true;
                if (interfaceC4507.m9082()) {
                    if (!c1102.f4299 || (interfaceC3684 = (InterfaceC3684) c1102.f4300) == null) {
                        return;
                    }
                    interfaceC4507.m9079(interfaceC3684, (Set) c1102.f4303);
                    return;
                }
                try {
                    interfaceC4507.m9079(null, interfaceC4507.mo4847());
                    return;
                } catch (SecurityException e8) {
                    interfaceC4507.m9074("Failed to get service from broker.");
                    c4840.m9640(new C3936(10), null);
                    return;
                }
            case 26:
                InterfaceC5296 interfaceC5296 = (InterfaceC5296) this.f10252;
                interfaceC5296.mo10491();
                if (C4486.m9046()) {
                    interfaceC5296.mo10495().m10200(this);
                    return;
                }
                AbstractC5328 abstractC5328 = (AbstractC5328) this.f10250;
                boolean z = abstractC5328.f20227 != 0;
                abstractC5328.f20227 = 0L;
                if (z) {
                    abstractC5328.mo10248();
                    return;
                }
                return;
            case 27:
                ServiceConnectionC5280 serviceConnectionC5280 = (ServiceConnectionC5280) this.f10250;
                C5322 c5322 = serviceConnectionC5280.f19916.f20057;
                C5215 c5215 = c5322.f20200;
                C5322.m10556(c5215);
                c5215.m10203();
                Bundle bundle = new Bundle();
                bundle.putString("package_name", serviceConnectionC5280.f19915);
                try {
                    C0287 c0287 = (C0287) ((InterfaceC0272) this.f10252);
                    Parcel m1305 = c0287.m1305();
                    AbstractC0472.m1911(m1305, bundle);
                    Parcel m1303 = c0287.m1303(m1305, 1);
                    Bundle bundle2 = (Bundle) AbstractC0472.m1912(m1303, Bundle.CREATOR);
                    m1303.recycle();
                    if (bundle2 == null) {
                        C5344 c5344 = c5322.f20193;
                        C5322.m10556(c5344);
                        c5344.f20343.m10217("Install Referrer Service returned a null response");
                    }
                } catch (Exception e9) {
                    C5344 c53442 = c5322.f20193;
                    C5322.m10556(c53442);
                    c53442.f20343.m10216(e9.getMessage(), "Exception occurred while retrieving the Install Referrer");
                }
                C5215 c52152 = c5322.f20200;
                C5322.m10556(c52152);
                c52152.m10203();
                throw new IllegalStateException("Unexpected call on client side");
            case 28:
                m6042();
                return;
            default:
                C5337 c5337 = ((BinderC5223) this.f10250).f19646;
                c5337.m10649();
                C5287 c5287 = (C5287) this.f10252;
                if (c5287.f19944.m10309() == null) {
                    c5337.getClass();
                    String str2 = c5287.f19945;
                    AbstractC3659.m7687(str2);
                    C5217 m10624 = c5337.m10624(str2);
                    if (m10624 != null) {
                        c5337.m10643(c5287, m10624);
                        return;
                    }
                    return;
                }
                c5337.getClass();
                String str3 = c5287.f19945;
                AbstractC3659.m7687(str3);
                C5217 m106242 = c5337.m10624(str3);
                if (m106242 != null) {
                    c5337.m10611(c5287, m106242);
                    return;
                }
                return;
        }
    }

    public String toString() {
        switch (this.f10251) {
            case 9:
                Runnable runnable = (Runnable) this.f10252;
                if (runnable != null) {
                    return "SequentialExecutorWorker{running=" + runnable + "}";
                }
                StringBuilder sb = new StringBuilder("SequentialExecutorWorker{state=");
                int i = ((ExecutorC3040) this.f10250).f11570;
                sb.append(i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "RUNNING" : "QUEUED" : "QUEUING" : "IDLE");
                sb.append("}");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
    
        r1 = r1 | java.lang.Thread.interrupted();
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
    
        ((java.lang.Runnable) r10.f10252).run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007a, code lost:
    
        r10.f10252 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007c, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005c, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
    
        p221.ExecutorC3040.f11569.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + ((java.lang.Runnable) r10.f10252), (java.lang.Throwable) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0043, code lost:
    
        if (r1 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return;
     */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m6045() {
        /*
            r10 = this;
            r0 = 0
            r1 = r0
        L2:
            java.lang.Object r2 = r10.f10250     // Catch: java.lang.Throwable -> L58
            ˏᐧ.ˆʾ r2 = (p221.ExecutorC3040) r2     // Catch: java.lang.Throwable -> L58
            java.util.ArrayDeque r2 = r2.f11573     // Catch: java.lang.Throwable -> L58
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L58
            r3 = 1
            if (r0 != 0) goto L2c
            java.lang.Object r0 = r10.f10250     // Catch: java.lang.Throwable -> L20
            ˏᐧ.ˆʾ r0 = (p221.ExecutorC3040) r0     // Catch: java.lang.Throwable -> L20
            int r4 = r0.f11570     // Catch: java.lang.Throwable -> L20
            r5 = 4
            if (r4 != r5) goto L22
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            if (r1 == 0) goto L46
        L18:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
            goto L46
        L20:
            r0 = move-exception
            goto L7d
        L22:
            long r6 = r0.f11572     // Catch: java.lang.Throwable -> L20
            r8 = 1
            long r6 = r6 + r8
            r0.f11572 = r6     // Catch: java.lang.Throwable -> L20
            r0.f11570 = r5     // Catch: java.lang.Throwable -> L20
            r0 = r3
        L2c:
            java.lang.Object r4 = r10.f10250     // Catch: java.lang.Throwable -> L20
            ˏᐧ.ˆʾ r4 = (p221.ExecutorC3040) r4     // Catch: java.lang.Throwable -> L20
            java.util.ArrayDeque r4 = r4.f11573     // Catch: java.lang.Throwable -> L20
            java.lang.Object r4 = r4.poll()     // Catch: java.lang.Throwable -> L20
            java.lang.Runnable r4 = (java.lang.Runnable) r4     // Catch: java.lang.Throwable -> L20
            r10.f10252 = r4     // Catch: java.lang.Throwable -> L20
            if (r4 != 0) goto L47
            java.lang.Object r0 = r10.f10250     // Catch: java.lang.Throwable -> L20
            ˏᐧ.ˆʾ r0 = (p221.ExecutorC3040) r0     // Catch: java.lang.Throwable -> L20
            r0.f11570 = r3     // Catch: java.lang.Throwable -> L20
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            if (r1 == 0) goto L46
            goto L18
        L46:
            return
        L47:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L58
            r1 = r1 | r2
            r2 = 0
            java.lang.Object r3 = r10.f10252     // Catch: java.lang.Throwable -> L5a java.lang.RuntimeException -> L5c
            java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L5a java.lang.RuntimeException -> L5c
            r3.run()     // Catch: java.lang.Throwable -> L5a java.lang.RuntimeException -> L5c
        L55:
            r10.f10252 = r2     // Catch: java.lang.Throwable -> L58
            goto L2
        L58:
            r0 = move-exception
            goto L7f
        L5a:
            r0 = move-exception
            goto L7a
        L5c:
            r3 = move-exception
            java.util.logging.Logger r4 = p221.ExecutorC3040.f11569     // Catch: java.lang.Throwable -> L5a
            java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L5a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5a
            r6.<init>()     // Catch: java.lang.Throwable -> L5a
            java.lang.String r7 = "Exception while executing runnable "
            r6.append(r7)     // Catch: java.lang.Throwable -> L5a
            java.lang.Object r7 = r10.f10252     // Catch: java.lang.Throwable -> L5a
            java.lang.Runnable r7 = (java.lang.Runnable) r7     // Catch: java.lang.Throwable -> L5a
            r6.append(r7)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L5a
            r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L5a
            goto L55
        L7a:
            r10.f10252 = r2     // Catch: java.lang.Throwable -> L58
            throw r0     // Catch: java.lang.Throwable -> L58
        L7d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            throw r0     // Catch: java.lang.Throwable -> L58
        L7f:
            if (r1 == 0) goto L88
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L88:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p179.RunnableC2689.m6045():void");
    }
}
