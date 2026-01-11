.class public abstract Lٴʾ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lˊᐧ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    const-string v2, "xn--"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object v2, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    sput-object v0, Lٴʾ/ﹳٴ;->ﹳٴ:Lˊᐧ/ʼˎ;

    return-void
.end method

.method public static ⁱˊ(I)I
    .locals 3

    .prologue
    const/16 v0, 0x1a

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x61

    return p0

    :cond_0
    const/16 v0, 0x24

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x16

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ﹳٴ(IIZ)I
    .locals 0

    .prologue
    if-eqz p2, :cond_0

    div-int/lit16 p0, p0, 0x2bc

    goto :goto_0

    :cond_0
    div-int/lit8 p0, p0, 0x2

    :goto_0
    div-int p1, p0, p1

    add-int/2addr p1, p0

    const/4 p0, 0x0

    :goto_1
    const/16 p2, 0x1c7

    if-le p1, p2, :cond_1

    div-int/lit8 p1, p1, 0x23

    add-int/lit8 p0, p0, 0x24

    goto :goto_1

    :cond_1
    mul-int/lit8 p2, p1, 0x24

    add-int/lit8 p1, p1, 0x26

    div-int/2addr p2, p1

    add-int/2addr p2, p0

    return p2
.end method
