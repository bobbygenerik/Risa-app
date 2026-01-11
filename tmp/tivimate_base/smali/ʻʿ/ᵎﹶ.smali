.class public final synthetic Lʻʿ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˎ/ˆʾ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lʽⁱ/ˏᵢ;


# direct methods
.method public synthetic constructor <init>(Lʻʿ/ﹳٴ;Lʽⁱ/ˏᵢ;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lʻʿ/ᵎﹶ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lʻʿ/ᵎﹶ;->ᴵˊ:Lʽⁱ/ˏᵢ;

    return-void
.end method

.method public synthetic constructor <init>(Lʽⁱ/ˏᵢ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʻʿ/ᵎﹶ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻʿ/ᵎﹶ;->ᴵˊ:Lʽⁱ/ˏᵢ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)V
    .locals 6

    .prologue
    iget v0, p0, Lʻʿ/ᵎﹶ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʻʿ/ᵎﹶ;->ᴵˊ:Lʽⁱ/ˏᵢ;

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ﹳٴ(Lʽⁱ/ˏᵢ;)V

    return-void

    :pswitch_0
    check-cast p1, Lʻʿ/ⁱˊ;

    check-cast p1, Lʻʿ/ʼᐧ;

    iget-object v0, p1, Lʻʿ/ʼᐧ;->ʼᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v1, p0, Lʻʿ/ᵎﹶ;->ᴵˊ:Lʽⁱ/ˏᵢ;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lʽⁱ/ﹳᐧ;

    iget v3, v2, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v2

    iget v3, v1, Lʽⁱ/ˏᵢ;->ﹳٴ:I

    iput v3, v2, Lʽⁱ/ᵔﹳ;->ˏי:I

    iget v3, v1, Lʽⁱ/ˏᵢ;->ⁱˊ:I

    iput v3, v2, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    new-instance v3, Lʽⁱ/ﹳᐧ;

    invoke-direct {v3, v2}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    new-instance v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v4, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Ljava/lang/Object;ILjava/lang/String;I)V

    iput-object v2, p1, Lʻʿ/ʼᐧ;->ʼᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    :cond_0
    iget p1, v1, Lʽⁱ/ˏᵢ;->ﹳٴ:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
