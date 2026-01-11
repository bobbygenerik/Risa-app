.class public final Lˊᐧ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:Z

.field public final ˑﹳ:Z

.field public ᵎﹶ:Lˊᐧ/ʾᵎ;

.field public ⁱˊ:I

.field public final ﹳٴ:[B

.field public ﾞᴵ:Lˊᐧ/ʾᵎ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˊᐧ/ʾᵎ;->ˑﹳ:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˊᐧ/ʾᵎ;->ˈ:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    iput p2, p0, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    iput p3, p0, Lˊᐧ/ʾᵎ;->ʽ:I

    iput-boolean p4, p0, Lˊᐧ/ʾᵎ;->ˈ:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˊᐧ/ʾᵎ;->ˑﹳ:Z

    return-void
.end method


# virtual methods
.method public final ʽ()Lˊᐧ/ʾᵎ;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˊᐧ/ʾᵎ;->ˈ:Z

    new-instance v1, Lˊᐧ/ʾᵎ;

    iget v2, p0, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    iget v3, p0, Lˊᐧ/ʾᵎ;->ʽ:I

    iget-object v4, p0, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    invoke-direct {v1, v4, v2, v3, v0}, Lˊᐧ/ʾᵎ;-><init>([BIIZ)V

    return-object v1
.end method

.method public final ˈ(Lˊᐧ/ʾᵎ;I)V
    .locals 5

    .prologue
    iget-boolean v0, p1, Lˊᐧ/ʾᵎ;->ˑﹳ:Z

    iget-object v1, p1, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    if-eqz v0, :cond_3

    iget v0, p1, Lˊᐧ/ʾᵎ;->ʽ:I

    add-int v2, v0, p2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_2

    iget-boolean v4, p1, Lˊᐧ/ʾᵎ;->ˈ:Z

    if-nez v4, :cond_1

    iget v4, p1, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    sub-int/2addr v2, v4

    if-gt v2, v3, :cond_0

    invoke-static {v4, v0, v1, v1}, Lﹶˈ/ʼˎ;->ˈˏ(II[B[B)V

    iget v0, p1, Lˊᐧ/ʾᵎ;->ʽ:I

    iget v2, p1, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    sub-int/2addr v0, v2

    iput v0, p1, Lˊᐧ/ʾᵎ;->ʽ:I

    const/4 v0, 0x0

    iput v0, p1, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget v0, p1, Lˊᐧ/ʾᵎ;->ʽ:I

    iget v2, p0, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    add-int v3, v2, p2

    sub-int/2addr v3, v2

    iget-object v4, p0, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    invoke-static {v4, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lˊᐧ/ʾᵎ;->ʽ:I

    add-int/2addr v0, p2

    iput v0, p1, Lˊᐧ/ʾᵎ;->ʽ:I

    iget p1, p0, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    add-int/2addr p1, p2

    iput p1, p0, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ(Lˊᐧ/ʾᵎ;)V
    .locals 1

    iput-object p0, p1, Lˊᐧ/ʾᵎ;->ᵎﹶ:Lˊᐧ/ʾᵎ;

    iget-object v0, p0, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    iput-object v0, p1, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    iget-object v0, p0, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    iput-object p1, v0, Lˊᐧ/ʾᵎ;->ᵎﹶ:Lˊᐧ/ʾᵎ;

    iput-object p1, p0, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    return-void
.end method

.method public final ﹳٴ()Lˊᐧ/ʾᵎ;
    .locals 4

    .prologue
    iget-object v0, p0, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lˊᐧ/ʾᵎ;->ᵎﹶ:Lˊᐧ/ʾᵎ;

    iput-object v0, v3, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    iget-object v0, p0, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    iput-object v3, v0, Lˊᐧ/ʾᵎ;->ᵎﹶ:Lˊᐧ/ʾᵎ;

    iput-object v1, p0, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    iput-object v1, p0, Lˊᐧ/ʾᵎ;->ᵎﹶ:Lˊᐧ/ʾᵎ;

    return-object v2
.end method
