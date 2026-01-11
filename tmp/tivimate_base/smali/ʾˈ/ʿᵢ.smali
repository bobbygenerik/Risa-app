.class public final Lʾˈ/ʿᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵔᵢ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʾˈ/ʿᵢ;->ʾˋ:I

    iput-object p2, p0, Lʾˈ/ʿᵢ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lʾˈ/ʿᵢ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lʻᵢ/ʼᐧ;

    iget-object p1, p0, Lʾˈ/ʿᵢ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʿᵢ/ˈٴ;

    iget-object v0, p1, Lʿᵢ/ˈٴ;->ᵔᵢ:Lʼﾞ/ʻٴ;

    invoke-virtual {v0}, Lʼﾞ/ʻٴ;->ⁱˊ()Lʿᵢ/ˈˏ;

    move-result-object v0

    instance-of v0, v0, Lʿᵢ/ˈʿ;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lʿᵢ/ˈٴ;->ﾞᴵ(Lʿᵢ/ˈٴ;ZLˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_0
    return-object p1

    :pswitch_0
    check-cast p1, Lʾˈ/ᵎⁱ;

    iget-object v0, p0, Lʾˈ/ʿᵢ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾˈ/ᴵʼ;

    iput-object p1, v0, Lʾˈ/ᴵʼ;->ᵔᵢ:Lʾˈ/ᵎⁱ;

    iget-object p1, p1, Lʾˈ/ᵎⁱ;->ﹳٴ:Lʾˈ/ᵔٴ;

    iget-object p1, p1, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    sget-object v1, Lʾˈ/ᐧﾞ;->ʾˋ:Lʾˈ/ᐧﾞ;

    invoke-static {v0, p1, v1, p2}, Lʾˈ/ᴵʼ;->ﹳٴ(Lʾˈ/ᴵʼ;Ljava/lang/String;Lʾˈ/ᐧﾞ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
