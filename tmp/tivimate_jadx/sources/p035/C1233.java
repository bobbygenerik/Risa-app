package p035;

import android.support.v4.media.session.AbstractC0001;
import android.support.v4.media.session.ⁱˊ;
import ar.tvplayer.core.domain.ـˆ;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p010.AbstractC0844;
import p013.AbstractC0915;
import p013.C0907;
import p013.C0910;
import p013.C0922;
import p023.C1066;
import p023.InterfaceC1069;
import p034.C1194;
import p034.InterfaceC1191;
import p034.InterfaceC1192;
import p159.C2546;
import p417.InterfaceC4930;
import p417.InterfaceC4931;
import p417.InterfaceC4932;
import p430.AbstractC5099;
import p430.AbstractC5103;
import p430.C5097;
import p430.C5110;
import ʼⁱ.ʽⁱ;
import ˉˆ.ʿ;
import ﹳˋ.ٴﹶ;
import ﹶﾞ.ⁱי;

/* renamed from: ʼﾞ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1233 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f4787;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f4788;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object f4789;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object f4790;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Object f4791;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f4792;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4793;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object f4794;

    public C1233(C1247 c1247, ـˆ r4) {
        this.f4793 = 0;
        this.f4788 = c1247;
        this.f4789 = new AbstractC1237(-1, "", "");
        List list = c1247.f4847;
        C5097 c5097 = C5097.f19202;
        this.f4794 = list == null ? c5097 : list;
        ʽⁱ r0 = new ʽⁱ(1, this);
        list = list == null ? c5097 : list;
        C1205 c1205 = new C1205(0, r0);
        ArrayList arrayList = new ArrayList(list.size() + 1);
        arrayList.addAll(list);
        arrayList.add(c1205);
        throw new C0910();
    }

    public C1233(C1247 c1247, AbstractC1237 abstractC1237) {
        int i;
        C1066 c1066;
        this.f4793 = 0;
        int i2 = c1247.f4849;
        InterfaceC1191 interfaceC1191 = c1247.f4842;
        this.f4788 = c1247;
        this.f4789 = abstractC1237;
        Object obj = c1247.f4847;
        this.f4794 = obj == null ? C5097.f19202 : obj;
        InterfaceC4931 interfaceC4931 = c1247.f4852;
        if (interfaceC4931 != null) {
            String str = c1247.f4853;
            if (str == null) {
                c1066 = new C1066(new ⁱי(this, 9, interfaceC4931));
            } else {
                ⁱי r12 = new ⁱי(this, 9, interfaceC4931);
                int m3018 = AbstractC0844.m3018(i2);
                if (m3018 == 1) {
                    i = 1;
                } else {
                    if (m3018 != 2) {
                        throw new IllegalStateException(("Can't get max number of reader for journal mode '" + AbstractC0001.m1(i2) + '\'').toString());
                    }
                    i = 4;
                }
                int m30182 = AbstractC0844.m3018(i2);
                if (m30182 != 1 && m30182 != 2) {
                    throw new IllegalStateException(("Can't get max number of writers for journal mode '" + AbstractC0001.m1(i2) + '\'').toString());
                }
                c1066 = new C1066(r12, str, i);
            }
            this.f4790 = c1066;
        } else {
            if (interfaceC1191 == null) {
                throw new IllegalArgumentException("SQLiteManager was constructed with both null driver and open helper factory!");
            }
            this.f4790 = new C2546(new ʿ(5, interfaceC1191.mo3701(new C1194(c1247.f4854, c1247.f4853, new C1244(this, abstractC1237.f4814), false, false))));
        }
        boolean z = i2 == 3;
        InterfaceC1192 m3812 = m3812();
        if (m3812 != null) {
            m3812.setWriteAheadLoggingEnabled(z);
        }
    }

    public C1233(boolean z, boolean z2, Long l, Long l2, Long l3, Long l4) {
        this.f4793 = 1;
        this.f4792 = z;
        this.f4787 = z2;
        this.f4788 = l;
        this.f4789 = l2;
        this.f4794 = l3;
        this.f4790 = l4;
        this.f4791 = AbstractC5103.m10044(C5110.f19215);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m3810(InterfaceC4932 interfaceC4932) {
        InterfaceC4930 mo3415 = interfaceC4932.mo3415("PRAGMA busy_timeout");
        try {
            mo3415.mo3392();
            long j = mo3415.getLong(0);
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            if (j < 3000) {
                ⁱˊ.ˑﹳ(interfaceC4932, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ٴﹶ.ᵔᵢ(mo3415, th);
                throw th2;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final void m3811(C1233 c1233, InterfaceC4932 interfaceC4932) {
        Object c0922;
        AbstractC1237 abstractC1237 = (AbstractC1237) c1233.f4789;
        C1247 c1247 = (C1247) c1233.f4788;
        if (c1247.f4849 == 3) {
            ⁱˊ.ˑﹳ(interfaceC4932, "PRAGMA journal_mode = WAL");
        } else {
            ⁱˊ.ˑﹳ(interfaceC4932, "PRAGMA journal_mode = TRUNCATE");
        }
        if (c1247.f4849 == 3) {
            ⁱˊ.ˑﹳ(interfaceC4932, "PRAGMA synchronous = NORMAL");
        } else {
            ⁱˊ.ˑﹳ(interfaceC4932, "PRAGMA synchronous = FULL");
        }
        m3810(interfaceC4932);
        InterfaceC4930 mo3415 = interfaceC4932.mo3415("PRAGMA user_version");
        try {
            mo3415.mo3392();
            int i = (int) mo3415.getLong(0);
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            int i2 = abstractC1237.f4814;
            if (i != i2) {
                ⁱˊ.ˑﹳ(interfaceC4932, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    if (i == 0) {
                        c1233.m3813(interfaceC4932);
                    } else {
                        c1233.m3814(interfaceC4932, i, i2);
                    }
                    ⁱˊ.ˑﹳ(interfaceC4932, "PRAGMA user_version = " + i2);
                    c0922 = C0907.f3832;
                } catch (Throwable th) {
                    c0922 = new C0922(th);
                }
                if (!(c0922 instanceof C0922)) {
                    ⁱˊ.ˑﹳ(interfaceC4932, "END TRANSACTION");
                }
                Throwable m3188 = AbstractC0915.m3188(c0922);
                if (m3188 != null) {
                    ⁱˊ.ˑﹳ(interfaceC4932, "ROLLBACK TRANSACTION");
                    throw m3188;
                }
            }
            c1233.m3816(interfaceC4932);
        } finally {
        }
    }

    public String toString() {
        switch (this.f4793) {
            case 1:
                Map map = (Map) this.f4791;
                Long l = (Long) this.f4790;
                Long l2 = (Long) this.f4794;
                Long l3 = (Long) this.f4789;
                Long l4 = (Long) this.f4788;
                ArrayList arrayList = new ArrayList();
                if (this.f4792) {
                    arrayList.add("isRegularFile");
                }
                if (this.f4787) {
                    arrayList.add("isDirectory");
                }
                if (l4 != null) {
                    arrayList.add("byteCount=" + l4);
                }
                if (l3 != null) {
                    arrayList.add("createdAt=" + l3);
                }
                if (l2 != null) {
                    arrayList.add("lastModifiedAt=" + l2);
                }
                if (l != null) {
                    arrayList.add("lastAccessedAt=" + l);
                }
                if (!map.isEmpty()) {
                    arrayList.add("extras=" + map);
                }
                return AbstractC5099.m10034(arrayList, ", ", "FileMetadata(", ")", null, 56);
            default:
                return super.toString();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public InterfaceC1192 m3812() {
        ʿ r0;
        InterfaceC1069 interfaceC1069 = (InterfaceC1069) this.f4790;
        C2546 c2546 = interfaceC1069 instanceof C2546 ? (C2546) interfaceC1069 : null;
        if (c2546 == null || (r0 = c2546.f9653) == null) {
            return null;
        }
        return (InterfaceC1192) r0.ᴵˊ;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m3813(InterfaceC4932 interfaceC4932) {
        AbstractC1237 abstractC1237 = (AbstractC1237) this.f4789;
        InterfaceC4930 mo3415 = interfaceC4932.mo3415("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (mo3415.mo3392()) {
                if (mo3415.getLong(0) == 0) {
                    z = true;
                }
            }
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            abstractC1237.mo3730(interfaceC4932);
            if (!z) {
                C1218 mo3725 = abstractC1237.mo3725(interfaceC4932);
                if (!mo3725.f4714) {
                    throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + mo3725.f4715).toString());
                }
            }
            m3815(interfaceC4932);
            abstractC1237.mo3731();
            Iterator it = ((List) this.f4794).iterator();
            while (it.hasNext()) {
                ((C1205) it.next()).getClass();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ٴﹶ.ᵔᵢ(mo3415, th);
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x009b A[EDGE_INSN: B:122:0x009b->B:106:0x009b BREAK  A[LOOP:4: B:85:0x0027->B:107:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0061  */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3814(p417.InterfaceC4932 r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p035.C1233.m3814(ﹳᴵ.ﹳٴ, int, int):void");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void m3815(InterfaceC4932 interfaceC4932) {
        ⁱˊ.ˑﹳ(interfaceC4932, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        ⁱˊ.ˑﹳ(interfaceC4932, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + ((String) ((AbstractC1237) this.f4789).f4813) + "')");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0080  */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3816(p417.InterfaceC4932 r11) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p035.C1233.m3816(ﹳᴵ.ﹳٴ):void");
    }
}
