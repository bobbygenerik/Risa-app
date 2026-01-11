.class public abstract Lᵔᴵ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᵔᴵ/ⁱˊ;->ﹳٴ:I

    iput p2, p0, Lᵔᴵ/ⁱˊ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public ⁱˊ(Lﹳᴵ/ﹳٴ;)V
    .locals 1

    .prologue
    instance-of v0, p1, Lˊˎ/ﹳٴ;

    if-eqz v0, :cond_0

    check-cast p1, Lˊˎ/ﹳٴ;

    iget-object p1, p1, Lˊˎ/ﹳٴ;->ʾˋ:Lʼﹶ/ﹳٴ;

    invoke-virtual {p0, p1}, Lᵔᴵ/ⁱˊ;->ﹳٴ(Lʼﹶ/ﹳٴ;)V

    return-void

    :cond_0
    new-instance p1, Lʻᵢ/ˈ;

    const-string v0, "Migration functionality with a provided SQLiteDriver requires overriding the migrate(SQLiteConnection) function."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ﹳٴ(Lʼﹶ/ﹳٴ;)V
    .locals 1

    new-instance p1, Lʻᵢ/ˈ;

    const-string v0, "Migration functionality with a SupportSQLiteDatabase (without a provided SQLiteDriver) requires overriding the migrate(SupportSQLiteDatabase) function."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method
