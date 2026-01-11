.class public final Lcom/google/android/gms/internal/measurement/ᐧˉ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ᵔʼ;


# static fields
.field public static final ⁱˊ:Lcom/google/android/gms/internal/measurement/ʿʻ;


# instance fields
.field public final ﹳٴ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʿʻ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ʿʻ;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ʿʻ;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/google/android/gms/internal/measurement/ᐧˉ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/ᵔʼ;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ʿʻ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ʿʻ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ʿʻ;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ᐧˉ;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/ـˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ʼˋ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/ـˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ᐧˉ;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ()Ljava/lang/Object;
    .locals 8

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʾˏ;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ﹳٴ:Landroid/content/ContentResolver;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ⁱˊ:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    const-string v1, "ConfigurationContentLdr"

    if-nez v2, :cond_0

    const-string v0, "Unable to acquire ContentProviderClient, using default values"

    nop

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˆʾ:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    :try_start_1
    const-string v0, "ContentProvider query returned null cursor, using default values"

    nop

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    const/16 v4, 0x100

    if-gt v0, v4, :cond_3

    :try_start_4
    new-instance v4, Lיـ/ˑﹳ;

    invoke-direct {v4, v0}, Lיـ/ﹳᐧ;-><init>(I)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/HashMap;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v5}, Ljava/util/HashMap;-><init>(IF)V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Cursor read incomplete (ContentProvider dead?), using default values"

    nop

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    :cond_5
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-object v4

    :goto_1
    if-eqz v3, :cond_6

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw v4
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    :try_start_9
    const-string v3, "ContentProvider query failed, using default values"

    nop

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    :goto_4
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
.end method

.method public ˈ(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ˎˎ;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/measurement/ﾞי;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʼˋ;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ﾞי;->ⁱˊ(Lcom/google/android/gms/internal/measurement/ˎˎ;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ᐧˉ;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ʼˎ(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ᐧˉ;)V

    return-void
.end method

.method public ˑﹳ(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ˎˎ;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/measurement/ﾞי;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʼˋ;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ᐧˉ;

    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ʼˎ(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ᐧˉ;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    return-void
.end method

.method public ⁱˊ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ᐧʾ;
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/measurement/ᵔʼ;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/measurement/ᵔʼ;->ﹳٴ(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/measurement/ᵔʼ;->ⁱˊ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ᐧʾ;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No factory is available for message type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ﹳٴ(Ljava/lang/Class;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/gms/internal/measurement/ᵔʼ;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/measurement/ᵔʼ;->ﹳٴ(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
