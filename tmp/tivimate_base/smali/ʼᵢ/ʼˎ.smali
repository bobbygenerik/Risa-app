.class public final synthetic Lʼᵢ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵢ/ﹳᐧ;
.implements Lʼᵢ/ʻٴ;


# static fields
.field public static final ʾˋ:Lʼᵢ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʼᵢ/ʼˎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʼᵢ/ʼˎ;->ʾˋ:Lʼᵢ/ʼˎ;

    return-void
.end method

.method public static bridge synthetic ⁱˊ(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    .locals 0

    check-cast p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    return-object p0
.end method


# virtual methods
.method public ʽ(Ljava/lang/Object;)I
    .locals 2

    .prologue
    check-cast p1, Lʼᵢ/ᵔʾ;

    iget-object p1, p1, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public ﹳٴ(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2, p3}, Lʼᵢ/ـˆ;->ˈ(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
