.class public final Lˉˈ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lיᐧ/ﾞᴵ;

.field public final ﹳٴ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lיᐧ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˈ/ʽ;->ﹳٴ:Ljava/util/ArrayList;

    iput-object p2, p0, Lˉˈ/ʽ;->ⁱˊ:Lיᐧ/ﾞᴵ;

    return-void
.end method

.method public static ﹳٴ(Landroid/graphics/ImageDecoder$Source;IILʼᵔ/ᵔᵢ;)Lˉˈ/ﹳٴ;
    .locals 1

    .prologue
    new-instance v0, Lⁱˆ/ⁱˊ;

    invoke-direct {v0, p1, p2, p3}, Lⁱˆ/ⁱˊ;-><init>(IILʼᵔ/ᵔᵢ;)V

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p1, :cond_0

    new-instance p1, Lˉˈ/ﹳٴ;

    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {p1, p0}, Lˉˈ/ﹳٴ;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Received unexpected drawable type for animated image, failing: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
