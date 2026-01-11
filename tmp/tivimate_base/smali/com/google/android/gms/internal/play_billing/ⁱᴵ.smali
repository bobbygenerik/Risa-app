.class public final Lcom/google/android/gms/internal/play_billing/ⁱᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lcom/google/android/gms/internal/play_billing/ⁱᴵ;


# instance fields
.field public final ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

.field public final ﹳٴ:Lcom/google/android/gms/internal/play_billing/ᵎʿ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ʽ:Lcom/google/android/gms/internal/play_billing/ⁱᴵ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵎʿ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ᵎʿ;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ᵎʿ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/ˋˊ;
    .locals 5

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ⁱˉ;->ﹳٴ:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ˋˊ;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ᵎʿ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ʼᵢ;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʾˊ;

    const-class v2, Lcom/google/android/gms/internal/play_billing/ʼـ;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ᵎʿ;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/ʽˑ;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/play_billing/ʽˑ;->ˈ:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ʼᵢ;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʾˊ;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/ـᵎ;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʾˊ;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/ʽˑ;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ـﹶ;

    new-instance v3, Lcom/google/android/gms/internal/play_billing/ـᵢ;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/ـᵢ;-><init>(Lcom/google/android/gms/internal/play_billing/ʾˊ;Lcom/google/android/gms/internal/play_billing/ـﹶ;)V

    goto :goto_1

    :cond_0
    sget v2, Lcom/google/android/gms/internal/play_billing/ٴᴵ;->ﹳٴ:I

    sget v2, Lcom/google/android/gms/internal/play_billing/ʻᴵ;->ﹳٴ:I

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ʼᵢ;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʾˊ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ʽˑ;->ﹳٴ()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/play_billing/ـᵎ;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʾˊ;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sget v4, Lcom/google/android/gms/internal/play_billing/ﹳⁱ;->ﹳٴ:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/ﹶ;->ʽﹳ(Lcom/google/android/gms/internal/play_billing/ʽˑ;Lcom/google/android/gms/internal/play_billing/ʾˊ;Lcom/google/android/gms/internal/play_billing/ʾˊ;)Lcom/google/android/gms/internal/play_billing/ﹶ;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, p1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ˋˊ;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    return-object v3

    :cond_3
    return-object v1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "messageType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
