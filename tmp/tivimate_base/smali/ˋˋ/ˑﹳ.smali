.class public final Lˋˋ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;

.field public final synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;II)V
    .locals 0

    iput p5, p0, Lˋˋ/ˑﹳ;->ʾˋ:I

    iput-object p1, p0, Lˋˋ/ˑﹳ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p2, p0, Lˋˋ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lˋˋ/ˑﹳ;->ʽʽ:Ljava/lang/Object;

    iput p4, p0, Lˋˋ/ˑﹳ;->ˈٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lᐧﹳ/ʽ;ILﹶﾞ/ﹳـ;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lˋˋ/ˑﹳ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋˋ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    iput p2, p0, Lˋˋ/ˑﹳ;->ˈٴ:I

    iput-object p3, p0, Lˋˋ/ˑﹳ;->ʽʽ:Ljava/lang/Object;

    iput-object p4, p0, Lˋˋ/ˑﹳ;->ᴵᵔ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    iget v0, p0, Lˋˋ/ˑﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˋˋ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧﹳ/ʽ;

    iget-object v1, p0, Lˋˋ/ˑﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ﹳـ;

    iget-object v2, p0, Lˋˋ/ˑﹳ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    move-object v3, v0

    check-cast v3, Lﹶﾞ/ʻʼ;

    iget v4, p0, Lˋˋ/ˑﹳ;->ˈٴ:I

    invoke-interface {v3, v4}, Lﹶﾞ/ʻʼ;->ﹳٴ(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Local AppMeasurementService processed last upload request. StartId"

    invoke-virtual {v1, v4, v5}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lﹶﾞ/ᵎʻ;->ˉˆ(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/ﹳـ;Ljava/lang/Long;)Lﹶﾞ/ᵎʻ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Completed wakeful intent."

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Lﹶﾞ/ʻʼ;->ⁱˊ(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Lˋˋ/ʽ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lˋˋ/ʽ;-><init>(Ljava/lang/Runnable;I)V

    invoke-static {v0}, Lˋˋ/ⁱˊ;->ˑﹳ(Lˋˋ/ⁱˊ;)Lˋˋ/ʾᵎ;

    move-result-object v0

    iget-object v1, p0, Lˋˋ/ˑﹳ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ʼˎ;

    iget-object v1, v1, Lˋˋ/ʼˎ;->ʽ:Lˋˋ/ﾞᴵ;

    new-instance v2, Lˋˋ/ˈ;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v0}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lˋˋ/ﾞᴵ;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    new-instance v0, Lˋˋ/ʽ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lˋˋ/ʽ;-><init>(Ljava/lang/Runnable;I)V

    invoke-static {v0}, Lˋˋ/ⁱˊ;->ˑﹳ(Lˋˋ/ⁱˊ;)Lˋˋ/ʾᵎ;

    move-result-object v0

    iget-object v1, p0, Lˋˋ/ˑﹳ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ᵎﹶ;

    iget-object v1, v1, Lˋˋ/ᵎﹶ;->ʽ:Lˋˋ/ﾞᴵ;

    new-instance v2, Lˋˋ/ˈ;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lˋˋ/ﾞᴵ;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
