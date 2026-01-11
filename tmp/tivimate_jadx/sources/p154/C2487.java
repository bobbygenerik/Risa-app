package p154;

import com.hierynomus.security.SecurityException;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.UUID;
import p033.AbstractC1179;
import p033.C1181;
import p033.EnumC1175;
import p033.EnumC1189;
import p173.C2656;
import p173.InterfaceC2655;
import p197.C2900;
import p250.C3305;
import p250.C3306;

/* renamed from: ˊʾ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2487 extends AbstractC1179 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Object f9481;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ int f9482 = 0;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Object f9483;

    public /* synthetic */ C2487(int i, EnumC1175 enumC1175, EnumC1189 enumC1189, long j, long j2) {
        super(i, enumC1175, enumC1189, j, j2);
    }

    public C2487(C3305 c3305, AbstractC1179 abstractC1179) {
        this.f9481 = c3305;
        this.f9483 = abstractC1179;
    }

    @Override // p033.AbstractC1179
    public String toString() {
        switch (this.f9482) {
            case 1:
                return ((AbstractC1179) this.f9483).toString();
            default:
                return super.toString();
        }
    }

    @Override // p033.AbstractC1179
    /* renamed from: ʼᵢ */
    public void mo3693(C2656 c2656) {
        switch (this.f9482) {
            case 1:
                AbstractC1179 abstractC1179 = (AbstractC1179) this.f9483;
                try {
                    ((C1181) abstractC1179.ˊᵔ()).f4584 |= 8;
                    int i = c2656.f10938;
                    C3306 c3306 = new C3306(this, c2656);
                    abstractC1179.mo3693(c3306);
                    System.arraycopy(c3306.f12723.mo6857(), 0, c2656.f10940, i + 48, 16);
                    return;
                } catch (SecurityException e) {
                    throw new IllegalStateException(e);
                }
            default:
                super.mo3693(c2656);
                return;
        }
    }

    @Override // p033.AbstractC1179
    /* renamed from: ʽˑ */
    public AbstractC1179 mo3692() {
        switch (this.f9482) {
            case 1:
                return ((AbstractC1179) this.f9483).mo3692();
            default:
                return this;
        }
    }

    @Override // p033.AbstractC1179
    /* renamed from: ˈٴ */
    public /* bridge */ /* synthetic */ void mo3693(C2656 c2656) {
        switch (this.f9482) {
            case 1:
                mo3693(c2656);
                return;
            default:
                super.mo3693(c2656);
                return;
        }
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public InterfaceC2655 m5636() {
        switch (this.f9482) {
            case 1:
                return (C1181) ((AbstractC1179) this.f9483).ˊᵔ();
            default:
                return super.ˊᵔ();
        }
    }

    @Override // p033.AbstractC1179
    /* renamed from: יˉ */
    public void mo3695(C2656 c2656) {
        switch (this.f9482) {
            case 0:
                c2656.m6417(this.f4575);
                EnumSet enumSet = (EnumSet) this.f9483;
                c2656.m6417(enumSet.size());
                c2656.m6417(1);
                c2656.m5936(2);
                Iterator it = enumSet.iterator();
                while (it.hasNext()) {
                    if (((EnumC1175) it.next()).m3690()) {
                        throw new UnsupportedOperationException("SMB 3.x support is not yet implemented");
                    }
                }
                c2656.m5938();
                UUID uuid = (UUID) this.f9481;
                long leastSignificantBits = uuid.getLeastSignificantBits();
                long mostSignificantBits = uuid.getMostSignificantBits();
                c2656.m6419(mostSignificantBits >>> 32);
                c2656.m6417((int) ((mostSignificantBits >>> 16) & 65535));
                c2656.m6417((int) (mostSignificantBits & 65535));
                C2900.f10934.m6408(c2656, leastSignificantBits);
                EnumC1175 enumC1175 = EnumC1175.f4558;
                if (enumSet.contains(enumC1175)) {
                    throw new UnsupportedOperationException("SMB 3.x support is not yet implemented");
                }
                c2656.m5938();
                c2656.m5938();
                Iterator it2 = enumSet.iterator();
                while (it2.hasNext()) {
                    c2656.m6417(((EnumC1175) it2.next()).f4564);
                }
                int size = ((enumSet.size() * 2) + 34) % 8;
                if (size > 0) {
                    c2656.m5936(8 - size);
                }
                if (enumSet.contains(enumC1175)) {
                    throw new UnsupportedOperationException("SMB 3.x support is not yet implemented");
                }
                return;
            default:
                super.mo3695(c2656);
                return;
        }
    }

    @Override // p033.AbstractC1179
    /* renamed from: ﹶˎ */
    public int mo3696() {
        switch (this.f9482) {
            case 1:
                return ((AbstractC1179) this.f9483).mo3696();
            default:
                return super.mo3696();
        }
    }
}
