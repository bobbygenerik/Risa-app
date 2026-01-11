.class public final Lⁱʼ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/ˑﹳ;


# static fields
.field public static final ˈٴ:[Ljava/lang/String;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lⁱʼ/ﾞʻ;->ˈٴ:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lⁱʼ/ﾞʻ;->ʾˋ:I

    iput-object p1, p0, Lⁱʼ/ﾞʻ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lⁱʼ/ﾞʻ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ʽ()V
    .locals 0

    return-void
.end method

.method private final ˈ()V
    .locals 0

    return-void
.end method

.method private final ᵎﹶ()V
    .locals 0

    return-void
.end method

.method private final ᵔᵢ()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget v0, p0, Lⁱʼ/ﾞʻ;->ʾˋ:I

    return-void
.end method

.method public final ˑﹳ()I
    .locals 1

    .prologue
    iget v0, p0, Lⁱʼ/ﾞʻ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ()V
    .locals 1

    iget v0, p0, Lⁱʼ/ﾞʻ;->ʾˋ:I

    return-void
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 1

    .prologue
    iget v0, p0, Lⁱʼ/ﾞʻ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lⁱʼ/ﾞʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lⁱʼ/ʽ;

    invoke-virtual {v0}, Lⁱʼ/ʽ;->ⁱˊ()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-class v0, Ljava/io/File;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V
    .locals 6

    .prologue
    iget p1, p0, Lⁱʼ/ﾞʻ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lⁱʼ/ﾞʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lⁱʼ/ʽ;

    iget-object v0, p0, Lⁱʼ/ﾞʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [B

    iget p1, p1, Lⁱʼ/ʽ;->ʾˋ:I

    packed-switch p1, :pswitch_data_1

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lⁱʼ/ﾞʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p1, p0, Lⁱʼ/ﾞʻ;->ʽʽ:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v2, Lⁱʼ/ﾞʻ;->ˈٴ:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find file path for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lⁱʼ/ﾞʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
