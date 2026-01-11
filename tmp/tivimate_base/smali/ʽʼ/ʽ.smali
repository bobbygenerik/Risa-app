.class public final synthetic Lʽʼ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lʽʼ/ˈ;


# direct methods
.method public synthetic constructor <init>(Lʽʼ/ˈ;I)V
    .locals 0

    iput p2, p0, Lʽʼ/ʽ;->ʾˋ:I

    iput-object p1, p0, Lʽʼ/ʽ;->ᴵˊ:Lʽʼ/ˈ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    iget v0, p0, Lʽʼ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽʼ/ʽ;->ᴵˊ:Lʽʼ/ˈ;

    sget-object v1, Lʽʼ/ˈ;->ˉʿ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lʽʼ/ˈ;->ﹳٴ:Lˉᵎ/ᵎﹶ;

    invoke-virtual {v2}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v2, v2, Lˉᵎ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    invoke-static {v2}, Lﹶﾞ/ⁱי;->ﹳٴ(Landroid/content/Context;)Lﹶﾞ/ⁱי;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v0, Lʽʼ/ˈ;->ʽ:Lﹳʽ/ˊʻ;

    invoke-virtual {v3}, Lﹳʽ/ˊʻ;->ʽʽ()Lˎﾞ/ⁱˊ;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lﹶﾞ/ⁱי;->ˈٴ()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v1, v3, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    const/4 v2, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ne v1, v4, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    if-nez v6, :cond_4

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    move v2, v5

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lʽʼ/ˈ;->ˈ:Lʽʼ/ˆʾ;

    invoke-virtual {v1, v3}, Lʽʼ/ˆʾ;->ﹳٴ(Lˎﾞ/ⁱˊ;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v3}, Lʽʼ/ˈ;->ʽ(Lˎﾞ/ⁱˊ;)Lˎﾞ/ⁱˊ;

    move-result-object v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_5

    :cond_4
    :goto_2
    invoke-virtual {v0, v3}, Lʽʼ/ˈ;->ʼˎ(Lˎﾞ/ⁱˊ;)Lˎﾞ/ⁱˊ;

    move-result-object v1
    :try_end_3
    .catch Lcom/google/firebase/installations/FirebaseInstallationsException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    invoke-virtual {v0, v1}, Lʽʼ/ˈ;->ﾞᴵ(Lˎﾞ/ⁱˊ;)V

    invoke-virtual {v0, v3, v1}, Lʽʼ/ˈ;->ˉʿ(Lˎﾞ/ⁱˊ;Lˎﾞ/ⁱˊ;)V

    iget v2, v1, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    iget-object v2, v1, Lˎﾞ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lʽʼ/ˈ;->ﾞʻ(Ljava/lang/String;)V

    :cond_5
    iget v2, v1, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    if-ne v2, v4, :cond_6

    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    invoke-direct {v1}, Lcom/google/firebase/FirebaseException;-><init>()V

    invoke-virtual {v0, v1}, Lʽʼ/ˈ;->ˆʾ(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_6
    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    if-ne v2, v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v1}, Lʽʼ/ˈ;->ٴﹶ(Lˎﾞ/ⁱˊ;)V

    goto :goto_6

    :cond_8
    :goto_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lʽʼ/ˈ;->ˆʾ(Ljava/lang/Exception;)V

    goto :goto_6

    :goto_5
    invoke-virtual {v0, v1}, Lʽʼ/ˈ;->ˆʾ(Ljava/lang/Exception;)V

    :cond_9
    :goto_6
    return-void

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_a

    :try_start_4
    invoke-virtual {v2}, Lﹶﾞ/ⁱי;->ˈٴ()V

    :cond_a
    throw v0

    :goto_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :pswitch_0
    iget-object v0, p0, Lʽʼ/ʽ;->ᴵˊ:Lʽʼ/ˈ;

    invoke-virtual {v0}, Lʽʼ/ˈ;->ⁱˊ()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lʽʼ/ʽ;->ᴵˊ:Lʽʼ/ˈ;

    invoke-virtual {v0}, Lʽʼ/ˈ;->ⁱˊ()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
