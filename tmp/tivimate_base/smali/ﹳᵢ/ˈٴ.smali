.class public final synthetic Lﹳᵢ/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˎ/ﾞᴵ;


# instance fields
.field public final synthetic ʽʽ:Lﹳᵢ/ﹳᐧ;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Lˎʾ/ᵎﹶ;

.field public final synthetic ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V
    .locals 0

    iput p4, p0, Lﹳᵢ/ˈٴ;->ʾˋ:I

    iput-object p1, p0, Lﹳᵢ/ˈٴ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput-object p2, p0, Lﹳᵢ/ˈٴ;->ʽʽ:Lﹳᵢ/ﹳᐧ;

    iput-object p3, p0, Lﹳᵢ/ˈٴ;->ˈٴ:Lˎʾ/ᵎﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .prologue
    iget v0, p0, Lﹳᵢ/ˈٴ;->ʾˋ:I

    check-cast p1, Lﹳᵢ/ٴᵢ;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹳᵢ/ˈٴ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹳᵢ/ᵢˏ;

    iget-object v2, p0, Lﹳᵢ/ˈٴ;->ʽʽ:Lﹳᵢ/ﹳᐧ;

    iget-object v3, p0, Lﹳᵢ/ˈٴ;->ˈٴ:Lˎʾ/ᵎﹶ;

    invoke-interface {p1, v1, v0, v2, v3}, Lﹳᵢ/ٴᵢ;->ﾞʻ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lﹳᵢ/ˈٴ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹳᵢ/ᵢˏ;

    iget-object v2, p0, Lﹳᵢ/ˈٴ;->ʽʽ:Lﹳᵢ/ﹳᐧ;

    iget-object v3, p0, Lﹳᵢ/ˈٴ;->ˈٴ:Lˎʾ/ᵎﹶ;

    invoke-interface {p1, v1, v0, v2, v3}, Lﹳᵢ/ٴᵢ;->ﾞᴵ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
