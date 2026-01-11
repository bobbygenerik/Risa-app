.class public final Lˈـ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Landroid/os/Handler;

.field public final synthetic ˈٴ:Lˈـ/ᵔʾ;

.field public final ᴵˊ:J


# direct methods
.method public constructor <init>(Lˈـ/ᵔʾ;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈـ/ˉʿ;->ˈٴ:Lˈـ/ᵔʾ;

    iput-wide p2, p0, Lˈـ/ˉʿ;->ᴵˊ:J

    const/4 p1, 0x0

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ʼᐧ(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lˈـ/ˉʿ;->ʾˋ:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˈـ/ˉʿ;->ʽʽ:Z

    iget-object v0, p0, Lˈـ/ˉʿ;->ʾˋ:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 5

    iget-object v0, p0, Lˈـ/ˉʿ;->ˈٴ:Lˈـ/ᵔʾ;

    iget-object v1, v0, Lˈـ/ᵔʾ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v2, v0, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    iget-object v0, v0, Lˈـ/ᵔʾ;->ᵎˊ:Ljava/lang/String;

    const/4 v3, 0x4

    sget-object v4, Lʼʻ/ᴵʼ;->ٴᵢ:Lʼʻ/ᴵʼ;

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˉˆ(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lˈـ/ʽʽ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ(Lˈـ/ʽʽ;)V

    iget-object v0, p0, Lˈـ/ˉʿ;->ʾˋ:Landroid/os/Handler;

    iget-wide v1, p0, Lˈـ/ˉʿ;->ᴵˊ:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
