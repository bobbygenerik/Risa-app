.class public final Lـﹶ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic ᴵˊ:Lـﹶ/ˉʿ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lـﹶ/ˉʿ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lـﹶ/ˉʿ;-><init>(I)V

    sput-object v0, Lـﹶ/ˉʿ;->ᴵˊ:Lـﹶ/ˉʿ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lـﹶ/ˉʿ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lﹳˊ/ʼᐧ;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lـﹶ/ˉʿ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    iget v0, p0, Lـﹶ/ˉʿ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/יˑ;->ʼˎ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :pswitch_0
    const/4 v0, 0x0

    throw v0

    :pswitch_1
    :try_start_0
    const-string v0, "EmojiCompat.EmojiCompatInitializer.run"

    sget-object v1, Lˆﾞ/ᵎﹶ;->ⁱˊ:Ljava/lang/reflect/Method;

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lـﹶ/ˆʾ;->ٴﹶ:Lـﹶ/ˆʾ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lـﹶ/ˆʾ;->ﹳٴ()Lـﹶ/ˆʾ;

    move-result-object v0

    invoke-virtual {v0}, Lـﹶ/ˆʾ;->ʽ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    sget-object v1, Lˆﾞ/ᵎﹶ;->ⁱˊ:Ljava/lang/reflect/Method;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
