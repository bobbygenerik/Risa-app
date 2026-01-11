package p453;

import java.io.IOException;
import java.util.EnumSet;
import p210.C2975;
import p210.C2978;
import p262.C3433;
import p317.AbstractC3914;
import ʽٴ.ˈ;
import ˊⁱ.ˑﹳ;

/* renamed from: ﾞˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5372 extends ˈ {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public EnumC5369 f20468;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public EnumSet f20471;

    /* renamed from: ʽ, reason: contains not printable characters */
    public byte f20465 = 5;

    /* renamed from: ˈ, reason: contains not printable characters */
    public byte f20467 = 0;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public byte[] f20469 = {16, 0, 0, 0};

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public short f20470 = 16;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public short f20464 = 0;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f20466 = 0;

    /* renamed from: ٴʼ */
    public void mo9635(C3433 c3433) {
        C2975 c2975 = (C2975) c3433.f13456;
        this.f20465 = c3433.m7327();
        byte m7327 = c3433.m7327();
        this.f20467 = m7327;
        if (5 != this.f20465 || m7327 != 0) {
            throw new IOException(String.format("Version mismatch: %d.%d != 5.0", Byte.valueOf(this.f20465), Byte.valueOf(this.f20467)));
        }
        EnumC5369 enumC5369 = (EnumC5369) AbstractC3914.m8091(c3433.m7327(), EnumC5369.class, null);
        if (enumC5369 == null) {
            throw new IOException(String.format("PDU type invalid: %d", enumC5369));
        }
        this.f20468 = enumC5369;
        this.f20471 = AbstractC3914.m8087(c3433.m7327(), EnumC5370.class);
        byte[] bArr = new byte[4];
        c2975.readFully(bArr);
        if (bArr[0] != 16) {
            throw new IOException(String.format("Integer and Character representation mismatch: %d", Byte.valueOf(bArr[0])));
        }
        if (bArr[1] != 0) {
            throw new IOException(String.format("Floating-Point representation mismatch: %d", Byte.valueOf(bArr[1])));
        }
        this.f20469 = bArr;
        this.f20470 = (short) c2975.readUnsignedShort();
        this.f20464 = (short) c2975.readUnsignedShort();
        this.f20466 = c2975.readInt();
    }

    /* renamed from: ᵎⁱ */
    public void mo9633(ˑﹳ r3) {
        if (this.f20468 == null) {
            throw new IllegalStateException("Invalid PDU type: " + this.f20468);
        }
        if (this.f20471 == null) {
            throw new IllegalStateException("Invalid PFC flag(s): " + this.f20471);
        }
        r3.ᴵˊ(this.f20465);
        r3.ᴵˊ(this.f20467);
        r3.ᴵˊ((byte) this.f20468.f20446);
        r3.ᴵˊ((byte) AbstractC3914.m8088(this.f20471));
        ((C2978) r3.ᴵˊ).write(this.f20469);
        r3.ᴵᵔ(this.f20470);
        r3.ᴵᵔ(0);
        r3.ʽʽ(this.f20466);
    }
}
