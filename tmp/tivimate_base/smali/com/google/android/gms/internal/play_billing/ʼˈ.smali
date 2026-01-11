.class public final enum Lcom/google/android/gms/internal/play_billing/ʼˈ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum ʾˋ:Lcom/google/android/gms/internal/play_billing/ʼˈ;

.field public static final synthetic ᴵˊ:[Lcom/google/android/gms/internal/play_billing/ʼˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʼˈ;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ʼˈ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʼˈ;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/play_billing/ʼˈ;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/play_billing/ʼˈ;->ᴵˊ:[Lcom/google/android/gms/internal/play_billing/ʼˈ;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/ʼˈ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ʼˈ;->ᴵˊ:[Lcom/google/android/gms/internal/play_billing/ʼˈ;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/ʼˈ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/play_billing/ʼˈ;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
