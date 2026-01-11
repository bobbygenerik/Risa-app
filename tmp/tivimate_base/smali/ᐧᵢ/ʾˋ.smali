.class public final Lᐧᵢ/ʾˋ;
.super Lˎᵢ/ᴵᵔ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:J

.field public final ᴵˊ:Lˎᵢ/ﹳᐧ;


# direct methods
.method public constructor <init>(Lˎᵢ/ﹳᐧ;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧᵢ/ʾˋ;->ᴵˊ:Lˎᵢ/ﹳᐧ;

    iput-wide p2, p0, Lᐧᵢ/ʾˋ;->ʽʽ:J

    return-void
.end method


# virtual methods
.method public final ʽ()J
    .locals 2

    iget-wide v0, p0, Lᐧᵢ/ʾˋ;->ʽʽ:J

    return-wide v0
.end method

.method public final ˉˆ()Lˊᐧ/ᵔᵢ;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵎﹶ()Lˎᵢ/ﹳᐧ;
    .locals 1

    iget-object v0, p0, Lᐧᵢ/ʾˋ;->ᴵˊ:Lˎᵢ/ﹳᐧ;

    return-object v0
.end method
