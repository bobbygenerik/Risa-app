package p033;

import android.support.v4.media.session.AbstractC0001;
import p173.C2656;
import p173.InterfaceC2655;
import p197.C2900;
import p317.AbstractC3914;
import ʽⁱ.ᵎﹶ;

/* renamed from: ʼﹳ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1179 extends ᵎﹶ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C2656 f4573;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C1182 f4574;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f4575;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f4576;

    public AbstractC1179() {
        super(new C1181());
    }

    public AbstractC1179(int i, EnumC1175 enumC1175, EnumC1189 enumC1189) {
        this(i, enumC1175, enumC1189, 0L, 0L);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC1179(int r2, p033.EnumC1175 r3, p033.EnumC1189 r4, long r5, long r7) {
        /*
            r1 = this;
            ʼﹳ.ٴﹶ r0 = new ʼﹳ.ٴﹶ
            r0.<init>()
            r1.<init>(r0)
            r1.f4575 = r2
            r0.f4589 = r3
            r0.f4583 = r4
            r0.f4587 = r5
            r0.f4578 = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p033.AbstractC1179.<init>(int, ʼﹳ.ʽ, ʼﹳ.ﾞʻ, long, long):void");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(((C1181) ((InterfaceC2655) ((ᵎﹶ) this).ʾˋ)).f4583);
        sb.append(" with message id << ");
        return AbstractC0001.m8(sb, ((C1181) ((InterfaceC2655) ((ᵎﹶ) this).ʾˋ)).f4591, " >>");
    }

    @Override // 
    /* renamed from: ʼᵢ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public void mo3693(C2656 c2656) {
        C2900 c2900 = c2656.f10939;
        C1181 c1181 = (C1181) ((InterfaceC2655) ((ᵎﹶ) this).ʾˋ);
        c1181.getClass();
        c1181.f4586 = c2656.f10938;
        c2656.mo6415(4, new byte[]{-2, 83, 77, 66});
        c2656.m6417(64);
        int ordinal = c1181.f4589.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            c2656.m5936(2);
        } else {
            c2656.m6417(c1181.f4588);
        }
        if (c1181.f4589.m3690()) {
            c2656.mo6415(2, new byte[]{0, 0});
            c2656.m5936(2);
            throw new UnsupportedOperationException("SMB 3.x not yet implemented");
        }
        c2656.m5938();
        c2656.m6417(c1181.f4583.f4628);
        c2656.m6417(c1181.f4579 + c1181.f4588);
        c2656.m6419(c1181.f4584);
        c2656.m6419(c1181.f4590);
        c2900.m6408(c2656, c1181.f4591);
        if (AbstractC3914.m8089(c1181.f4584, EnumC1178.f4571)) {
            c2900.m6408(c2656, c1181.f4585);
        } else {
            c2656.m5938();
            c2656.m6419(c1181.f4578);
        }
        c2900.m6408(c2656, c1181.f4587);
        c2656.mo6415(16, C1181.f4577);
        mo3695(c2656);
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public AbstractC1179 mo3692() {
        return this;
    }

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public void mo3694(C2656 c2656) {
        throw new UnsupportedOperationException("Should be implemented by specific message type");
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public void mo3695(C2656 c2656) {
        throw new UnsupportedOperationException("Should be implemented by specific message type");
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public int mo3696() {
        return 65536;
    }
}
