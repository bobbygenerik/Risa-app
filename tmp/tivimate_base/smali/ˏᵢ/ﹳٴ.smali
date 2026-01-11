.class public final Lˏᵢ/ﹳٴ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Landroid/content/Context;

.field public final synthetic ˈٴ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lˏᵢ/ﹳٴ;->ᴵˊ:I

    iput-object p2, p0, Lˏᵢ/ﹳٴ;->ʽʽ:Landroid/content/Context;

    iput-object p3, p0, Lˏᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lˊʼ/ٴﹶ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lˏᵢ/ﹳٴ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˏᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lˏᵢ/ﹳٴ;->ʽʽ:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˏᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ˈⁱ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ﹳٴ:Ljava/lang/String;

    const-string v1, ".preferences_pb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lˏᵢ/ﹳٴ;->ʽʽ:Landroid/content/Context;

    invoke-static {v1, v0}, Lˈˊ/ᵔʾ;->ᵔᵢ(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
