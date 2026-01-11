.class public final Lʿᵢ/ᵔʾ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(ILˈי/ˈ;I)V
    .locals 0

    iput p3, p0, Lʿᵢ/ᵔʾ;->ᴵᵔ:I

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʿᵢ/ᵔʾ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lˈי/ˈ;

    invoke-virtual {p0, p1, p2}, Lʿᵢ/ᵔʾ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʿᵢ/ᵔʾ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʿᵢ/ᵔʾ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :pswitch_0
    check-cast p1, Lʿᵢ/ˈˏ;

    check-cast p2, Lˈי/ˈ;

    invoke-virtual {p0, p1, p2}, Lʿᵢ/ᵔʾ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʿᵢ/ᵔʾ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʿᵢ/ᵔʾ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 3

    .prologue
    iget v0, p0, Lʿᵢ/ᵔʾ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʿᵢ/ᵔʾ;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Lʿᵢ/ᵔʾ;-><init>(ILˈי/ˈ;I)V

    iput-object p1, v0, Lʿᵢ/ᵔʾ;->ˊʻ:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lʿᵢ/ᵔʾ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lʿᵢ/ᵔʾ;-><init>(ILˈי/ˈ;I)V

    iput-object p1, v0, Lʿᵢ/ᵔʾ;->ˊʻ:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lʿᵢ/ᵔʾ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lʿᵢ/ᵔʾ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error failed to fetch the remote configs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseSessions"

    nop

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lʿᵢ/ᵔʾ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lʿᵢ/ˈˏ;

    instance-of p1, p1, Lʿᵢ/ˈʿ;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
