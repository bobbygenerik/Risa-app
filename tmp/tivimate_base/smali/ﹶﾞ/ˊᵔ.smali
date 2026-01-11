.class public final synthetic Lﹶﾞ/ˊᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ʽ:Ljava/lang/String;

.field public final synthetic ⁱˊ:Lﹶﾞ/ـﹶ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lﹶﾞ/ـﹶ;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lﹶﾞ/ˊᵔ;->ﹳٴ:I

    iput-object p1, p0, Lﹶﾞ/ˊᵔ;->ⁱˊ:Lﹶﾞ/ـﹶ;

    iput-object p2, p0, Lﹶﾞ/ˊᵔ;->ʽ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .prologue
    iget v0, p0, Lﹶﾞ/ˊᵔ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/ـʾ;

    new-instance v1, Lˑʼ/ᵎˊ;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    iget-object v4, p0, Lﹶﾞ/ˊᵔ;->ⁱˊ:Lﹶﾞ/ـﹶ;

    iget-object v5, p0, Lﹶﾞ/ˊᵔ;->ʽ:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v2, v3}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    const-string v2, "internal.remoteConfig"

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/ـʾ;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/ˑˉ;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/ˑˉ;-><init>(Lcom/google/android/gms/internal/measurement/ـʾ;Lˑʼ/ᵎˊ;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    const-string v3, "getValue"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ˊᵔ;->ⁱˊ:Lﹶﾞ/ـﹶ;

    iget-object v1, v0, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    iget-object v1, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v2, p0, Lﹶﾞ/ˊᵔ;->ʽ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "platform"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "package_name"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎﹶ;->יˉ()V

    const-wide/32 v4, 0x2078d

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "gmp_version"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ᵔٴ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "app_version"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ˑٴ()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "app_version_int"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ⁱˊ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "dynamite_version"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v3

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ˑˉ;

    new-instance v1, Lﹶﾞ/ˊᵔ;

    iget-object v2, p0, Lﹶﾞ/ˊᵔ;->ʽ:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lﹶﾞ/ˊᵔ;->ⁱˊ:Lﹶﾞ/ـﹶ;

    invoke-direct {v1, v4, v2, v3}, Lﹶﾞ/ˊᵔ;-><init>(Lﹶﾞ/ـﹶ;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ˑˉ;-><init>(Lﹶﾞ/ˊᵔ;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
