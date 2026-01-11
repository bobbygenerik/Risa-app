.class public final synthetic Lʼﾞ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lʼﾞ/ٴﹶ;


# direct methods
.method public synthetic constructor <init>(Lʼﾞ/ٴﹶ;I)V
    .locals 0

    iput p2, p0, Lʼﾞ/ᵔᵢ;->ʾˋ:I

    iput-object p1, p0, Lʼﾞ/ᵔᵢ;->ᴵˊ:Lʼﾞ/ٴﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lʼﾞ/ᵔᵢ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ᵔᵢ;->ᴵˊ:Lʼﾞ/ٴﹶ;

    iget-object v1, v0, Lʼﾞ/ٴﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    invoke-virtual {v1}, Lʼﾞ/ˊʻ;->ˆʾ()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lʼﾞ/ٴﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    invoke-virtual {v0}, Lʼﾞ/ˊʻ;->ᵔʾ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᵔᵢ;->ᴵˊ:Lʼﾞ/ٴﹶ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
