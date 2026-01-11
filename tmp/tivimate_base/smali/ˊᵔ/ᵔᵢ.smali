.class public final Lˊᵔ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼᐧ:Lˊᵔ/ˈ;

.field public static final ʽﹳ:Lˊᵔ/ˈ;

.field public static final ˏי:Lˊᵔ/ˈ;

.field public static final יـ:Lˊᵔ/ˈ;

.field public static final ᵔﹳ:Lˊᵔ/ˈ;

.field public static final ﹳᐧ:Lˊᵔ/ˈ;


# instance fields
.field public ʼˎ:J

.field public ʽ:Z

.field public ˆʾ:F

.field public final ˈ:Lˋⁱ/ʼʼ;

.field public ˉʿ:Lˊᵔ/ʼˎ;

.field public ˉˆ:Z

.field public final ˑﹳ:Lcom/google/android/gms/internal/play_billing/י;

.field public final ٴﹶ:Ljava/util/ArrayList;

.field public ᵎﹶ:F

.field public ᵔʾ:F

.field public ᵔᵢ:F

.field public ⁱˊ:F

.field public ﹳٴ:F

.field public final ﾞʻ:Ljava/util/ArrayList;

.field public ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˊᵔ/ˈ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˊᵔ/ˈ;-><init>(I)V

    sput-object v0, Lˊᵔ/ᵔᵢ;->ʼᐧ:Lˊᵔ/ˈ;

    new-instance v0, Lˊᵔ/ˈ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lˊᵔ/ˈ;-><init>(I)V

    sput-object v0, Lˊᵔ/ᵔᵢ;->ᵔﹳ:Lˊᵔ/ˈ;

    new-instance v0, Lˊᵔ/ˈ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lˊᵔ/ˈ;-><init>(I)V

    sput-object v0, Lˊᵔ/ᵔᵢ;->ﹳᐧ:Lˊᵔ/ˈ;

    new-instance v0, Lˊᵔ/ˈ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lˊᵔ/ˈ;-><init>(I)V

    sput-object v0, Lˊᵔ/ᵔᵢ;->יـ:Lˊᵔ/ˈ;

    new-instance v0, Lˊᵔ/ˈ;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lˊᵔ/ˈ;-><init>(I)V

    sput-object v0, Lˊᵔ/ᵔᵢ;->ˏי:Lˊᵔ/ˈ;

    new-instance v0, Lˊᵔ/ˈ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˊᵔ/ˈ;-><init>(I)V

    sput-object v0, Lˊᵔ/ᵔᵢ;->ʽﹳ:Lˊᵔ/ˈ;

    return-void
.end method

.method public constructor <init>(Lˊᵔ/ᵎﹶ;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lˊᵔ/ᵔᵢ;->ﹳٴ:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lˊᵔ/ᵔᵢ;->ʽ:Z

    iput-boolean v1, p0, Lˊᵔ/ᵔᵢ;->ﾞᴵ:Z

    iput v0, p0, Lˊᵔ/ᵔᵢ;->ᵎﹶ:F

    const v2, -0x800001

    iput v2, p0, Lˊᵔ/ᵔᵢ;->ᵔᵢ:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lˊᵔ/ᵔᵢ;->ʼˎ:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lˊᵔ/ᵔᵢ;->ٴﹶ:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lˊᵔ/ᵔᵢ;->ﾞʻ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, p0, Lˊᵔ/ᵔᵢ;->ˈ:Lˋⁱ/ʼʼ;

    new-instance v3, Lˊᵔ/ˑﹳ;

    invoke-direct {v3, p1}, Lˊᵔ/ˑﹳ;-><init>(Lˊᵔ/ᵎﹶ;)V

    iput-object v3, p0, Lˊᵔ/ᵔᵢ;->ˑﹳ:Lcom/google/android/gms/internal/play_billing/י;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lˊᵔ/ᵔᵢ;->ˆʾ:F

    iput-object v2, p0, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    iput v0, p0, Lˊᵔ/ᵔᵢ;->ᵔʾ:F

    iput-boolean v1, p0, Lˊᵔ/ᵔᵢ;->ˉˆ:Z

    return-void
.end method

.method public constructor <init>(Lˋⁱ/ʼʼ;Lcom/google/android/gms/internal/play_billing/י;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lˊᵔ/ᵔᵢ;->ﹳٴ:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lˊᵔ/ᵔᵢ;->ʽ:Z

    iput-boolean v1, p0, Lˊᵔ/ᵔᵢ;->ﾞᴵ:Z

    iput v0, p0, Lˊᵔ/ᵔᵢ;->ᵎﹶ:F

    const v2, -0x800001

    iput v2, p0, Lˊᵔ/ᵔᵢ;->ᵔᵢ:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lˊᵔ/ᵔᵢ;->ʼˎ:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lˊᵔ/ᵔᵢ;->ٴﹶ:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lˊᵔ/ᵔᵢ;->ﾞʻ:Ljava/util/ArrayList;

    iput-object p1, p0, Lˊᵔ/ᵔᵢ;->ˈ:Lˋⁱ/ʼʼ;

    iput-object p2, p0, Lˊᵔ/ᵔᵢ;->ˑﹳ:Lcom/google/android/gms/internal/play_billing/י;

    sget-object p1, Lˊᵔ/ᵔᵢ;->ﹳᐧ:Lˊᵔ/ˈ;

    if-eq p2, p1, :cond_4

    sget-object p1, Lˊᵔ/ᵔᵢ;->יـ:Lˊᵔ/ˈ;

    if-eq p2, p1, :cond_4

    sget-object p1, Lˊᵔ/ᵔᵢ;->ˏי:Lˊᵔ/ˈ;

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lˊᵔ/ᵔᵢ;->ʽﹳ:Lˊᵔ/ˈ;

    if-ne p2, p1, :cond_1

    const/high16 p1, 0x3b800000    # 0.00390625f

    iput p1, p0, Lˊᵔ/ᵔᵢ;->ˆʾ:F

    goto :goto_2

    :cond_1
    sget-object p1, Lˊᵔ/ᵔᵢ;->ʼᐧ:Lˊᵔ/ˈ;

    if-eq p2, p1, :cond_3

    sget-object p1, Lˊᵔ/ᵔᵢ;->ᵔﹳ:Lˊᵔ/ˈ;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lˊᵔ/ᵔᵢ;->ˆʾ:F

    goto :goto_2

    :cond_3
    :goto_0
    const p1, 0x3b03126f    # 0.002f

    iput p1, p0, Lˊᵔ/ᵔᵢ;->ˆʾ:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lˊᵔ/ᵔᵢ;->ˆʾ:F

    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    iput v0, p0, Lˊᵔ/ᵔᵢ;->ᵔʾ:F

    iput-boolean v1, p0, Lˊᵔ/ᵔᵢ;->ˉˆ:Z

    return-void
.end method

.method public static ⁱˊ()Lˊᵔ/ʽ;
    .locals 4

    .prologue
    sget-object v0, Lˊᵔ/ʽ;->ʼˎ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lˊᵔ/ʽ;

    new-instance v2, Lﹳʽ/ˊʻ;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lﹳʽ/ˊʻ;-><init>(I)V

    invoke-direct {v1, v2}, Lˊᵔ/ʽ;-><init>(Lﹳʽ/ˊʻ;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˊᵔ/ʽ;

    return-object v0
.end method


# virtual methods
.method public final ʽ(F)V
    .locals 7

    .prologue
    iget-object v0, p0, Lˊᵔ/ᵔᵢ;->ˑﹳ:Lcom/google/android/gms/internal/play_billing/י;

    iget-object v1, p0, Lˊᵔ/ᵔᵢ;->ˈ:Lˋⁱ/ʼʼ;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/י;->ʽʽ(Lˋⁱ/ʼʼ;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lˊᵔ/ᵔᵢ;->ﾞʻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑʿ/ﹳᐧ;

    iget v1, p0, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iget-object v2, v0, Lˑʿ/ﹳᐧ;->ᵎﹶ:Lˑʿ/ᴵˊ;

    iget-wide v3, v2, Lˑʿ/ʻٴ;->ʿ:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v0, Lˑʿ/ﹳᐧ;->ﹳٴ:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lˑʿ/ᴵˊ;->ᵔי(JJ)V

    iput-wide v3, v0, Lˑʿ/ﹳᐧ;->ﹳٴ:J

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final ˈ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    iget-wide v0, v0, Lˊᵔ/ʼˎ;->ⁱˊ:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Lˊᵔ/ᵔᵢ;->ⁱˊ()Lˊᵔ/ʽ;

    move-result-object v0

    iget-object v0, v0, Lˊᵔ/ʽ;->ˑﹳ:Lﹳʽ/ˊʻ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lˊᵔ/ᵔᵢ;->ﾞᴵ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˊᵔ/ᵔᵢ;->ˉˆ:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Spring animations can only come to an end when there is damping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳٴ(F)V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lˊᵔ/ᵔᵢ;->ﾞᴵ:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lˊᵔ/ᵔᵢ;->ᵔʾ:F

    return-void

    :cond_0
    iget-object v0, p0, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    if-nez v0, :cond_1

    new-instance v0, Lˊᵔ/ʼˎ;

    invoke-direct {v0, p1}, Lˊᵔ/ʼˎ;-><init>(F)V

    iput-object v0, p0, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    :cond_1
    iget-object v0, p0, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    float-to-double v1, p1

    iput-wide v1, v0, Lˊᵔ/ʼˎ;->ʼˎ:D

    double-to-float p1, v1

    float-to-double v1, p1

    iget p1, p0, Lˊᵔ/ᵔᵢ;->ᵎﹶ:F

    float-to-double v3, p1

    cmpl-double p1, v1, v3

    if-gtz p1, :cond_7

    iget p1, p0, Lˊᵔ/ᵔᵢ;->ᵔᵢ:F

    float-to-double v3, p1

    cmpg-double p1, v1, v3

    if-ltz p1, :cond_6

    iget p1, p0, Lˊᵔ/ᵔᵢ;->ˆʾ:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Lˊᵔ/ʼˎ;->ˈ:D

    const-wide v3, 0x404f400000000000L    # 62.5

    mul-double/2addr v1, v3

    iput-wide v1, v0, Lˊᵔ/ʼˎ;->ˑﹳ:D

    invoke-static {}, Lˊᵔ/ᵔᵢ;->ⁱˊ()Lˊᵔ/ʽ;

    move-result-object p1

    iget-object p1, p1, Lˊᵔ/ʽ;->ˑﹳ:Lﹳʽ/ˊʻ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne v0, p1, :cond_5

    iget-boolean p1, p0, Lˊᵔ/ᵔᵢ;->ﾞᴵ:Z

    if-nez p1, :cond_4

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˊᵔ/ᵔᵢ;->ﾞᴵ:Z

    iget-boolean p1, p0, Lˊᵔ/ᵔᵢ;->ʽ:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lˊᵔ/ᵔᵢ;->ˑﹳ:Lcom/google/android/gms/internal/play_billing/י;

    iget-object v0, p0, Lˊᵔ/ᵔᵢ;->ˈ:Lˋⁱ/ʼʼ;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/י;->ʽﹳ(Lˋⁱ/ʼʼ;)F

    move-result p1

    iput p1, p0, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    :cond_2
    iget p1, p0, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iget v0, p0, Lˊᵔ/ᵔᵢ;->ᵎﹶ:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_3

    iget v0, p0, Lˊᵔ/ᵔᵢ;->ᵔᵢ:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_3

    invoke-static {}, Lˊᵔ/ᵔᵢ;->ⁱˊ()Lˊᵔ/ʽ;

    move-result-object p1

    invoke-virtual {p1, p0}, Lˊᵔ/ʽ;->ﹳٴ(Lˊᵔ/ᵔᵢ;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void

    :cond_5
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
