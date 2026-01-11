package com.rapid7.helper.smbj.io;

import java.io.IOException;
import p033.C1181;
import p284.EnumC3571;

/* loaded from: classes.dex */
public class SMB2Exception extends IOException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final EnumC3571 f3104;

    public SMB2Exception(C1181 c1181, String str) {
        super(String.format("%s returned %s (%d/%d): %s", c1181.f4583, Long.valueOf(c1181.f4580), Long.valueOf(c1181.f4580), Long.valueOf(c1181.f4580), str));
        this.f3104 = EnumC3571.m7526(c1181.f4580);
    }
}
