.class public Lˋʼ/ﹳٴ;
.super Lˎʿ/ⁱˊ;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:[B

.field public static final ﾞᴵ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lˋʼ/ﹳٴ;->ˑﹳ:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lˋʼ/ﹳٴ;->ﾞᴵ:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final ʼᐧ(I)V
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {p0, p1, v0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void
.end method

.method public final ᵔﹳ()V
    .locals 2

    sget-object v0, Lˋʼ/ﹳٴ;->ˑﹳ:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void
.end method

.method public final ﹳᐧ()V
    .locals 2

    sget-object v0, Lˋʼ/ﹳٴ;->ﾞᴵ:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void
.end method
