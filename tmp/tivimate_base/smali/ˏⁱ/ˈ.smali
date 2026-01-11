.class public final Lˏⁱ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˏⁱ/ﹳٴ;


# instance fields
.field public final ʽ:I

.field public final ˈ:I

.field public final ˑﹳ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:I

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˏⁱ/ˈ;->ﹳٴ:I

    iput p2, p0, Lˏⁱ/ˈ;->ⁱˊ:I

    iput p3, p0, Lˏⁱ/ˈ;->ʽ:I

    iput p4, p0, Lˏⁱ/ˈ;->ˈ:I

    iput p5, p0, Lˏⁱ/ˈ;->ˑﹳ:I

    iput p6, p0, Lˏⁱ/ˈ;->ﾞᴵ:I

    return-void
.end method


# virtual methods
.method public final ⁱˊ()I
    .locals 3

    .prologue
    const v0, 0x73646976

    iget v1, p0, Lˏⁱ/ˈ;->ﹳٴ:I

    if-eq v1, v0, :cond_2

    const v0, 0x73647561

    if-eq v1, v0, :cond_1

    const v0, 0x73747874

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found unsupported streamType fourCC: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AviStreamHeaderChunk"

    invoke-static {v1, v0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method public final ﹳٴ()I
    .locals 1

    const v0, 0x68727473

    return v0
.end method
