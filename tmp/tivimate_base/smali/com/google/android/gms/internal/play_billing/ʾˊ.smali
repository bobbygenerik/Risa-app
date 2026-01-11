.class public final Lcom/google/android/gms/internal/play_billing/ʾˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/ⁱי;


# static fields
.field public static final ⁱˊ:Lcom/google/android/gms/internal/play_billing/ʾˊ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʾˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʾˊ;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ʾˊ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ʾˊ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ʾˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final ʽ(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/ʿـ;
    .locals 1

    .prologue
    check-cast p0, Lcom/google/android/gms/internal/play_billing/ʿـ;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ʿـ;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/ʿـ;->ʾˋ:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/play_billing/ʿـ;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/ʿـ;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʿـ;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/google/android/gms/internal/play_billing/ʿـ;->ʾˋ:Z

    move-object p0, v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ʿـ;->ⁱˊ()V

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/ʿـ;->putAll(Ljava/util/Map;)V

    :cond_2
    return-object p0
.end method


# virtual methods
.method public ⁱˊ(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ʾˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const-class v0, Lcom/google/android/gms/internal/play_billing/ʼـ;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/ʽˑ;
    .locals 3

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ʾˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This should never be called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-class v0, Lcom/google/android/gms/internal/play_billing/ʼـ;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ᵔᵢ(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ˈ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ʽˑ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Unable to get message info for "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported message type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
