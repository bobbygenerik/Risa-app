package com.bumptech.glide.load;

import p031.AbstractC1138;

/* loaded from: classes.dex */
public enum ImageHeaderParser$ImageType {
    GIF(true),
    JPEG(false),
    RAW(false),
    PNG_A(true),
    PNG(false),
    WEBP_A(true),
    WEBP(false),
    ANIMATED_WEBP(true),
    AVIF(true),
    ANIMATED_AVIF(true),
    UNKNOWN(false);


    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f1610;

    ImageHeaderParser$ImageType(boolean z) {
        this.f1610 = z;
    }

    public boolean hasAlpha() {
        return this.f1610;
    }

    public boolean isWebp() {
        int i = AbstractC1138.f4402[ordinal()];
        return i == 1 || i == 2 || i == 3;
    }
}
