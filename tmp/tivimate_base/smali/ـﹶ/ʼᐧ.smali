.class public final Lـﹶ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lـﹶ/יـ;

.field public ˈ:Lـﹶ/יـ;

.field public ˑﹳ:I

.field public final ⁱˊ:Lـﹶ/יـ;

.field public ﹳٴ:I

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Lـﹶ/יـ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lـﹶ/ʼᐧ;->ﹳٴ:I

    iput-object p1, p0, Lـﹶ/ʼᐧ;->ⁱˊ:Lـﹶ/יـ;

    iput-object p1, p0, Lـﹶ/ʼᐧ;->ʽ:Lـﹶ/יـ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lـﹶ/ʼᐧ;->ʽ:Lـﹶ/יـ;

    iget-object v0, v0, Lـﹶ/יـ;->ⁱˊ:Lـﹶ/ʻٴ;

    invoke-virtual {v0}, Lـﹶ/ʻٴ;->ⁱˊ()Lˈˏ/ﹳٴ;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lˈˏ/ʽ;->ﹳٴ(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, v0, Lˈˏ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    iget v0, v0, Lˈˏ/ʽ;->ʾˋ:I

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lـﹶ/ʼᐧ;->ˑﹳ:I

    const v1, 0xfe0f

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳٴ()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lـﹶ/ʼᐧ;->ﹳٴ:I

    iget-object v0, p0, Lـﹶ/ʼᐧ;->ⁱˊ:Lـﹶ/יـ;

    iput-object v0, p0, Lـﹶ/ʼᐧ;->ʽ:Lـﹶ/יـ;

    const/4 v0, 0x0

    iput v0, p0, Lـﹶ/ʼᐧ;->ﾞᴵ:I

    return-void
.end method
