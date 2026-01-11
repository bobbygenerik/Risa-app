.class public final synthetic Lﹶٴ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lﹶٴ/ˉʿ;


# direct methods
.method public synthetic constructor <init>(Lﹶٴ/ˉʿ;I)V
    .locals 0

    iput p2, p0, Lﹶٴ/ﾞʻ;->ʾˋ:I

    iput-object p1, p0, Lﹶٴ/ﾞʻ;->ᴵˊ:Lﹶٴ/ˉʿ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 9

    .prologue
    iget v0, p0, Lﹶٴ/ﾞʻ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶٴ/ﾞʻ;->ᴵˊ:Lﹶٴ/ˉʿ;

    iget-object v1, v0, Lﹶٴ/ˉʿ;->ˆʾ:Ljava/lang/Object;

    invoke-interface {v1}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lˉﾞ/ˈ;

    invoke-interface {v0}, Lˉﾞ/ˈ;->ⁱˊ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    invoke-interface {v0}, Lˉﾞ/ˈ;->ˈ()I

    move-result v1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-lez v1, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    move v6, v5

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v0}, Lˉﾞ/ˈ;->ˈ()I

    move-result v6

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v6, v1

    invoke-interface {v0, v6}, Lˉﾞ/ˈ;->ˆʾ(I)Lˉﾞ/ˈ;

    move-result-object v1

    mul-int/lit8 v4, v4, 0x1f

    invoke-interface {v1}, Lˉﾞ/ˈ;->ⁱˊ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :cond_1
    add-int/2addr v4, v5

    move v1, v7

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lˉﾞ/ˈ;->ˈ()I

    move-result v1

    move v6, v3

    :goto_2
    if-lez v1, :cond_3

    move v7, v3

    goto :goto_3

    :cond_3
    move v7, v5

    :goto_3
    if-eqz v7, :cond_5

    invoke-interface {v0}, Lˉﾞ/ˈ;->ˈ()I

    move-result v7

    add-int/lit8 v8, v1, -0x1

    sub-int/2addr v7, v1

    invoke-interface {v0, v7}, Lˉﾞ/ˈ;->ˆʾ(I)Lˉﾞ/ˈ;

    move-result-object v1

    mul-int/lit8 v6, v6, 0x1f

    invoke-interface {v1}, Lˉﾞ/ˈ;->ʽ()Lᴵˋ/ˊʻ;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lᴵˋ/ˊʻ;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v5

    :goto_4
    add-int/2addr v6, v1

    move v1, v8

    goto :goto_2

    :cond_5
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lﹶٴ/ﾞʻ;->ᴵˊ:Lﹶٴ/ˉʿ;

    iget-object v0, v0, Lﹶٴ/ˉʿ;->ⁱˊ:Lﹶٴ/ˑﹳ;

    invoke-interface {v0}, Lﹶٴ/ˑﹳ;->ⁱˊ()[Lיʼ/ﹳٴ;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
