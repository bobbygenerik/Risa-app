package p003;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Trace;
import android.view.MenuItem;
import androidx.leanback.widget.ʻٴ;
import androidx.lifecycle.AbstractC0157;
import ar.tvplayer.tv.R;
import com.google.android.gms.internal.measurement.ˏʻ;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import com.google.firebase.FirebaseCommonRegistrar;
import com.parse.ˊﾞ;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import p007.InterfaceC0836;
import p013.C0907;
import p055.AbstractC1445;
import p055.C1447;
import p055.C1495;
import p055.InterfaceC1488;
import p056.C1507;
import p056.C1508;
import p056.InterfaceC1498;
import p062.C1560;
import p070.C1629;
import p074.InterfaceC1650;
import p074.InterfaceC1651;
import p093.EnumC1853;
import p113.C1964;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p137.InterfaceC2344;
import p139.C2356;
import p196.C2895;
import p212.C2994;
import p212.InterfaceC2986;
import p223.C3056;
import p229.AbstractComponentCallbacksC3123;
import p277.C3537;
import p283.RunnableC3568;
import p301.InterfaceC3701;
import p305.InterfaceC3718;
import p305.InterfaceC3725;
import p305.InterfaceC3734;
import p316.AbstractC3906;
import p318.EnumC3916;
import p322.EnumC3971;
import p324.AbstractC3999;
import p324.C3997;
import p324.InterfaceC4036;
import p329.InterfaceC4087;
import p329.InterfaceC4104;
import p359.C4359;
import p359.C4360;
import p359.C4361;
import p359.C4362;
import p359.InterfaceC4355;
import p359.InterfaceC4357;
import p359.InterfaceC4363;
import p404.C4780;
import p404.InterfaceC4786;
import p414.C4917;
import p420.C4987;
import p420.InterfaceC4970;
import ʼˋ.ᵔʾ;
import ʼי.ﹳٴ;
import ʼⁱ.ˏⁱ;
import ʾʼ.ﹳـ;
import ʿˋ.ˉʿ;
import ʿˋ.ˋᵔ;
import ˉʾ.ʻˋ;
import ˉʾ.ˑ;
import ˉʾ.ᵎﹶ;
import ˉˊ.ﹳᐧ;
import ᐧᵎ.ʽʽ;
import ᴵʽ.ʾᵎ;
import ᴵʽ.ⁱˊ;
import ﹶﾞ.ⁱי;
import ﾞᵔ.ˆﾞ;
import ﾞᵔ.ˉٴ;

/* renamed from: ʻʿ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0778 implements InterfaceC3725, InterfaceC3718, InterfaceC2344, InterfaceC1651, InterfaceC2986, InterfaceC0836, InterfaceC1498, InterfaceC4363, InterfaceC3734 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f3243;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3244;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f3245;

    public /* synthetic */ C0778(Object obj, int i, Object obj2) {
        this.f3244 = i;
        this.f3245 = obj;
        this.f3243 = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C0778(InterfaceC2139 interfaceC2139, InterfaceC4087 interfaceC4087) {
        this.f3244 = 8;
        this.f3245 = interfaceC2139;
        this.f3243 = (AbstractC3906) interfaceC4087;
    }

    @Override // p305.InterfaceC3734
    public void accept(Object obj) {
        ʽﹳ r0 = (ʽﹳ) this.f3245;
        ((InterfaceC4970) obj).mo2846(r0.ᴵˊ, (C4987) r0.ʽʽ, (C2895) this.f3243);
    }

    @Override // p359.InterfaceC4363
    public Object apply(Object obj) {
        C4360 c4360 = (C4360) this.f3245;
        C2356 c2356 = (C2356) this.f3243;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        C4362 c4362 = c4360.f16190;
        ArrayList m8837 = c4360.m8837(sQLiteDatabase, c2356, c4362.f16200);
        for (EnumC3916 enumC3916 : EnumC3916.values()) {
            if (enumC3916 != c2356.f9110) {
                int size = c4362.f16200 - m8837.size();
                if (size <= 0) {
                    break;
                }
                m8837.addAll(c4360.m8837(sQLiteDatabase, c2356.m5442(enumC3916), size));
            }
        }
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < m8837.size(); i++) {
            sb.append(((C4361) m8837.get(i)).f16195);
            if (i < m8837.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        Cursor query = sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null);
        while (query.moveToNext()) {
            try {
                long j = query.getLong(0);
                Set set = (Set) hashMap.get(Long.valueOf(j));
                if (set == null) {
                    set = new HashSet();
                    hashMap.put(Long.valueOf(j), set);
                }
                set.add(new C4359(query.getString(1), query.getString(2)));
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }
        query.close();
        ListIterator listIterator = m8837.listIterator();
        while (listIterator.hasNext()) {
            C4361 c4361 = (C4361) listIterator.next();
            long j2 = c4361.f16195;
            if (hashMap.containsKey(Long.valueOf(j2))) {
                ﹳٴ m5447 = c4361.f16193.m5447();
                for (C4359 c4359 : (Set) hashMap.get(Long.valueOf(j2))) {
                    m5447.ﹳٴ(c4359.f16186, c4359.f16185);
                }
                listIterator.set(new C4361(j2, c4361.f16194, m5447.ⁱˊ()));
            }
        }
        return m8837;
    }

    @Override // p137.InterfaceC2344
    public boolean onMenuItemClick(MenuItem menuItem) {
        switch (this.f3244) {
            case 2:
                ﹳـ r0 = (ﹳـ) this.f3245;
                ʻˋ r5 = (ʻˋ) this.f3243;
                InterfaceC3701[] interfaceC3701Arr = ﹳـ.ˊﾞ;
                if (!ˉʿ.ﹳٴ) {
                    ˏʻ.ﹳـ(r0);
                    return false;
                }
                if (menuItem.getItemId() != 1) {
                    return false;
                }
                AbstractC3999.m8168(ˉʿ.ˆﾞ(r0), null, new ˏⁱ(r5, r0, (InterfaceC2136) null, 3), 3);
                return true;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                ᴵʽ.ˉʿ r02 = (ᴵʽ.ˉʿ) this.f3245;
                ⁱˊ r2 = (ⁱˊ) this.f3243;
                if (!ˉʿ.ﹳٴ) {
                    ˏʻ.ﹳـ(r02);
                    return false;
                }
                if (menuItem.getItemId() != 1) {
                    return false;
                }
                ʽʽ r12 = r2.ˈⁱ;
                if (r12 != null) {
                    AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = r02.f11928;
                    ʾᵎ r1 = abstractComponentCallbacksC3123 instanceof ʾᵎ ? (ʾᵎ) abstractComponentCallbacksC3123 : null;
                    if (r1 != null) {
                        r1.ˑˉ(r12, true);
                    }
                }
                return true;
            case 15:
                ˉٴ r03 = (ˉٴ) this.f3245;
                ˑ r52 = (ˑ) this.f3243;
                InterfaceC3701[] interfaceC3701Arr2 = ˉٴ.ˆﹳ;
                if (!ˉʿ.ﹳٴ) {
                    ˏʻ.ﹳـ(r03);
                    return false;
                }
                if (menuItem.getItemId() != 1) {
                    return false;
                }
                ˆﾞ r122 = r03.ᵢי();
                long j = r52.ﹳٴ;
                r122.getClass();
                AbstractC3999.m8168(AbstractC0157.m674(r122), null, new ﹳᐧ(27, j, (InterfaceC2136) null), 3);
                r03.ᵔⁱ = "";
                r03.ˊﹳ = true;
                return true;
            default:
                ˉٴ r04 = (ˉٴ) this.f3245;
                ᵎﹶ r13 = (ᵎﹶ) this.f3243;
                if (r04.mo4203() == null) {
                    return false;
                }
                if (!ˉʿ.ﹳٴ) {
                    ˏʻ.ﹳـ(r04);
                    return false;
                }
                int itemId = menuItem.getItemId();
                if (itemId == 1) {
                    ˆﾞ r123 = r04.ᵢי();
                    long j2 = r13.ﹳٴ;
                    boolean z = !r13.ʼʼ;
                    r123.getClass();
                    AbstractC3999.m8168(AbstractC0157.m674(r123), null, new ʼⁱ.ˆﾞ(j2, z, (InterfaceC2136) null, 9), 3);
                    if (r13.ʼʼ) {
                        ˋᵔ.ᐧᴵ(r04.mo4203(), r04.m6800(R.string.5t8));
                    } else {
                        ˋᵔ.ᐧᴵ(r04.mo4203(), r04.m6800(R.string.1lp));
                    }
                } else {
                    if (itemId != 2) {
                        return false;
                    }
                    ˉٴ.ˋˋ(r04, r13, (ᵔᵔ.ⁱˊ) null, 2);
                }
                return true;
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [ᴵʾ.ᵔᵢ, ᴵⁱ.ʼᐧ] */
    @Override // p056.InterfaceC1498
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public Object mo2816(C1508 c1508) {
        switch (this.f3244) {
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                InterfaceC2139 interfaceC2139 = (InterfaceC2139) this.f3245;
                ?? r1 = (AbstractC3906) this.f3243;
                RunnableC3568 runnableC3568 = new RunnableC3568(5, (InterfaceC4036) interfaceC2139.mo3419(C3997.f15367));
                C1507 c1507 = c1508.f5966;
                if (c1507 != null) {
                    c1507.mo4312(runnableC3568, EnumC3971.f15307);
                }
                return AbstractC3999.m8168(AbstractC3999.m8179(interfaceC2139), null, new ᵔʾ((InterfaceC4087) r1, c1508, (InterfaceC2136) null), 1);
            case 9:
                Executor executor = (Executor) this.f3245;
                C1964 c1964 = (C1964) this.f3243;
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                final int i = 0;
                Runnable runnable = new Runnable() { // from class: ᴵˋ.ᵔʾ
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i) {
                            case 0:
                                atomicBoolean.set(true);
                                return;
                            default:
                                atomicBoolean.set(true);
                                return;
                        }
                    }
                };
                C1507 c15072 = c1508.f5966;
                if (c15072 != null) {
                    c15072.mo4312(runnable, EnumC3971.f15307);
                }
                executor.execute(new ˊﾞ(atomicBoolean, c1508, c1964, 10));
                return "setForegroundAsync";
            default:
                Executor executor2 = (Executor) this.f3245;
                InterfaceC4104 interfaceC4104 = (InterfaceC4104) this.f3243;
                final AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
                final int i2 = 1;
                Runnable runnable2 = new Runnable() { // from class: ᴵˋ.ᵔʾ
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i2) {
                            case 0:
                                atomicBoolean2.set(true);
                                return;
                            default:
                                atomicBoolean2.set(true);
                                return;
                        }
                    }
                };
                C1507 c15073 = c1508.f5966;
                if (c15073 != null) {
                    c15073.mo4312(runnable2, EnumC3971.f15307);
                }
                executor2.execute(new ˊﾞ(atomicBoolean2, c1508, interfaceC4104, 11));
                return C0907.f3832;
        }
    }

    @Override // p007.InterfaceC0836
    /* renamed from: ʽ, reason: contains not printable characters */
    public Object mo2817() {
        switch (this.f3244) {
            case 5:
                C1629 c1629 = (C1629) this.f3245;
                Iterable iterable = (Iterable) this.f3243;
                C4360 c4360 = (C4360) ((InterfaceC4357) c1629.f6482);
                c4360.getClass();
                if (!iterable.iterator().hasNext()) {
                    return null;
                }
                c4360.m8833().compileStatement("DELETE FROM events WHERE _id in " + C4360.m8830(iterable)).execute();
                return null;
            default:
                C1629 c16292 = (C1629) this.f3245;
                for (Map.Entry entry : ((HashMap) this.f3243).entrySet()) {
                    ((C4360) ((InterfaceC4355) c16292.f6481)).m8836(((Integer) entry.getValue()).intValue(), EnumC1853.f7451, (String) entry.getKey());
                }
                return null;
        }
    }

    @Override // p074.InterfaceC1651
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public void mo2818(InterfaceC1650 interfaceC1650) {
        InterfaceC1651 interfaceC1651 = (InterfaceC1651) this.f3245;
        InterfaceC1651 interfaceC16512 = (InterfaceC1651) this.f3243;
        interfaceC1651.mo2818(interfaceC1650);
        interfaceC16512.mo2818(interfaceC1650);
    }

    @Override // p212.InterfaceC2986
    /* renamed from: ˈ, reason: contains not printable characters */
    public Object mo2819(ʻٴ r5) {
        String valueOf;
        switch (this.f3244) {
            case 4:
                String str = (String) this.f3245;
                C2994 c2994 = (C2994) this.f3243;
                try {
                    Trace.beginSection(str);
                    return c2994.f11421.mo2819(r5);
                } finally {
                    Trace.endSection();
                }
            default:
                String str2 = (String) this.f3245;
                C1560 c1560 = (C1560) this.f3243;
                Context context = (Context) r5.ⁱˊ(Context.class);
                switch (c1560.f6105) {
                    case 13:
                        ApplicationInfo applicationInfo = context.getApplicationInfo();
                        if (applicationInfo != null) {
                            valueOf = String.valueOf(applicationInfo.targetSdkVersion);
                            break;
                        }
                        valueOf = "";
                        break;
                    case 14:
                        valueOf = FirebaseCommonRegistrar.m2723(context);
                        break;
                    case 15:
                        int i = Build.VERSION.SDK_INT;
                        if (!context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
                            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
                                if (!context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
                                    if (i >= 26 && context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                                        valueOf = "embedded";
                                        break;
                                    }
                                    valueOf = "";
                                    break;
                                } else {
                                    valueOf = "auto";
                                    break;
                                }
                            } else {
                                valueOf = "watch";
                                break;
                            }
                        } else {
                            valueOf = "tv";
                            break;
                        }
                        break;
                    default:
                        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                        if (installerPackageName != null) {
                            valueOf = FirebaseCommonRegistrar.m2722(installerPackageName);
                            break;
                        }
                        valueOf = "";
                        break;
                }
                return new C4917(str2, valueOf);
        }
    }

    @Override // p305.InterfaceC3725
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void mo2820(Object obj, C1447 c1447) {
        C0777 c0777 = (C0777) ((InterfaceC0788) obj);
        c0777.m2811((InterfaceC1488) this.f3243, new ⁱי(c1447, ((C0779) this.f3245).f3253));
    }

    @Override // p305.InterfaceC3718
    /* renamed from: ⁱˊ */
    public void mo2801(Object obj) {
        C0789 c0789 = (C0789) this.f3245;
        C2895 c2895 = (C2895) this.f3243;
        C0777 c0777 = (C0777) ((InterfaceC0788) obj);
        c0777.getClass();
        C4987 c4987 = c0789.f3281;
        if (c4987 == null) {
            return;
        }
        C1495 c1495 = (C1495) c2895.f10901;
        c1495.getClass();
        int i = c2895.f10895;
        C0780 c0780 = c0777.f3219;
        AbstractC1445 abstractC1445 = c0789.f3285;
        c4987.getClass();
        ʽﹳ r3 = new ʽﹳ(c1495, i, c0780.m2870(abstractC1445, c4987), 1);
        int i2 = c2895.f10899;
        if (i2 != 0) {
            if (i2 == 1) {
                c0777.f3236 = r3;
                return;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                c0777.f3240 = r3;
                return;
            }
        }
        c0777.f3218 = r3;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Object m2821(C3537 c3537) {
        return ((C4780) this.f3245).m9552(c3537.f13883, ((InterfaceC4786) this.f3243).mo6543());
    }
}
