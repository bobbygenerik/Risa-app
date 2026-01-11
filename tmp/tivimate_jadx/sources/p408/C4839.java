package p408;

import java.util.Hashtable;
import p008.InterfaceC0837;
import p354.AbstractC4334;

/* renamed from: ﹳˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4839 implements InterfaceC0837 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f18142;

    /* renamed from: ˈ, reason: contains not printable characters */
    public AbstractC4334 f18143;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public AbstractC4334 f18144;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final byte[] f18145;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f18146;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC4334 f18147;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final byte[] f18148;

    static {
        Hashtable hashtable = new Hashtable();
        hashtable.put("GOST3411", 32);
        hashtable.put("MD2", 16);
        hashtable.put("MD4", 64);
        hashtable.put("MD5", 64);
        hashtable.put("RIPEMD128", 64);
        hashtable.put("RIPEMD160", 64);
        hashtable.put("SHA-1", 64);
        hashtable.put("SHA-224", 64);
        hashtable.put("SHA-256", 64);
        hashtable.put("SHA-384", 128);
        hashtable.put("SHA-512", 128);
        hashtable.put("Tiger", 64);
        hashtable.put("Whirlpool", 64);
    }

    public C4839(AbstractC4334 abstractC4334) {
        this.f18147 = abstractC4334;
        int mo8766 = abstractC4334.mo8766();
        this.f18146 = mo8766;
        this.f18142 = 64;
        this.f18148 = new byte[64];
        this.f18145 = new byte[64 + mo8766];
    }
}
