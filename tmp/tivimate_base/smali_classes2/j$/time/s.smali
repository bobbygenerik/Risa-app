.class public final Lj$/time/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x6aa27b45e4ddb74eL


# instance fields
.field public a:B

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lj$/time/s;->a:B

    iput-object p2, p0, Lj$/time/s;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .locals 6

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p0, Lj$/time/r;->d:Lj$/time/r;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    invoke-static {p0, v0, p1}, Lj$/time/r;->a(III)Lj$/time/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget p0, Lj$/time/n;->c:I

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    invoke-static {p0}, Lj$/time/l;->V(I)Lj$/time/l;

    move-result-object p0

    const-string v0, "month"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->F(J)V

    invoke-virtual {p0}, Lj$/time/l;->U()I

    move-result v0

    if-gt p1, v0, :cond_0

    new-instance v0, Lj$/time/n;

    invoke-virtual {p0}, Lj$/time/l;->getValue()I

    move-result p0

    invoke-direct {v0, p0, p1}, Lj$/time/n;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lj$/time/b;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal value for DayOfMonth field, value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not valid for month "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    sget p0, Lj$/time/w;->c:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->F(J)V

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->F(J)V

    new-instance v0, Lj$/time/w;

    invoke-direct {v0, p0, p1}, Lj$/time/w;-><init>(II)V

    return-object v0

    :pswitch_3
    sget p0, Lj$/time/u;->b:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Lj$/time/u;->S(I)Lj$/time/u;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget p0, Lj$/time/OffsetDateTime;->c:I

    sget-object p0, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-static {p0, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    invoke-static {p1}, Lj$/time/j;->d0(Ljava/io/DataInput;)Lj$/time/j;

    move-result-object v0

    invoke-static {p0, v0}, Lj$/time/LocalDateTime;->V(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p0

    invoke-static {p1}, Lj$/time/ZoneOffset;->d0(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object p1

    new-instance v0, Lj$/time/OffsetDateTime;

    invoke-direct {v0, p0, p1}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v0

    :pswitch_5
    sget p0, Lj$/time/q;->c:I

    invoke-static {p1}, Lj$/time/j;->d0(Ljava/io/DataInput;)Lj$/time/j;

    move-result-object p0

    invoke-static {p1}, Lj$/time/ZoneOffset;->d0(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object p1

    new-instance v0, Lj$/time/q;

    invoke-direct {v0, p0, p1}, Lj$/time/q;-><init>(Lj$/time/j;Lj$/time/ZoneOffset;)V

    return-object v0

    :pswitch_6
    invoke-static {p1}, Lj$/time/ZoneOffset;->d0(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget p0, Lj$/time/x;->d:I

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lj$/time/ZoneId;->U(Ljava/lang/String;Z)Lj$/time/ZoneId;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    sget-object p0, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-static {p0, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    invoke-static {p1}, Lj$/time/j;->d0(Ljava/io/DataInput;)Lj$/time/j;

    move-result-object v0

    invoke-static {p0, v0}, Lj$/time/LocalDateTime;->V(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p0

    invoke-static {p1}, Lj$/time/ZoneOffset;->d0(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    invoke-static {v1, p1}, Lj$/time/s;->a(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneId;

    const-string v1, "localDateTime"

    invoke-static {p0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "offset"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "zone"

    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v1, p1, Lj$/time/ZoneOffset;

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ZoneId must match ZoneOffset"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance v1, Lj$/time/ZonedDateTime;

    invoke-direct {v1, p0, p1, v0}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)V

    return-object v1

    :pswitch_9
    sget-object p0, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    sget-object p0, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-static {p0, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    invoke-static {p1}, Lj$/time/j;->d0(Ljava/io/DataInput;)Lj$/time/j;

    move-result-object p1

    invoke-static {p0, p1}, Lj$/time/LocalDateTime;->V(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p1}, Lj$/time/j;->d0(Ljava/io/DataInput;)Lj$/time/j;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p0, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    invoke-static {p0, v0, p1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lj$/time/Instant;->c:Lj$/time/Instant;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Lj$/time/Instant;->U(JJ)Lj$/time/Instant;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-object p0, Lj$/time/d;->c:Lj$/time/d;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long p0, p0

    const-wide/32 v2, 0x3b9aca00

    invoke-static {p0, p1, v2, v3}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v0

    invoke-static {p0, p1, v2, v3}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {v0, v1, p0}, Lj$/time/d;->l(JI)Lj$/time/d;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/time/s;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lj$/time/s;->a:B

    invoke-static {v0, p1}, Lj$/time/s;->a(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lj$/time/s;->b:Ljava/lang/Object;

    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4

    .prologue
    iget-byte v0, p0, Lj$/time/s;->a:B

    iget-object v1, p0, Lj$/time/s;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast v1, Lj$/time/r;

    iget v0, v1, Lj$/time/r;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, v1, Lj$/time/r;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, v1, Lj$/time/r;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void

    :pswitch_1
    check-cast v1, Lj$/time/n;

    iget v0, v1, Lj$/time/n;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, v1, Lj$/time/n;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    :pswitch_2
    check-cast v1, Lj$/time/w;

    iget v0, v1, Lj$/time/w;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, v1, Lj$/time/w;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    :pswitch_3
    check-cast v1, Lj$/time/u;

    iget v0, v1, Lj$/time/u;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void

    :pswitch_4
    check-cast v1, Lj$/time/OffsetDateTime;

    iget-object v0, v1, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    iget-object v2, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget v3, v2, Lj$/time/LocalDate;->a:I

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    iget-short v3, v2, Lj$/time/LocalDate;->b:S

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeByte(I)V

    iget-short v2, v2, Lj$/time/LocalDate;->c:S

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, v0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->j0(Ljava/io/DataOutput;)V

    iget-object v0, v1, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->e0(Ljava/io/DataOutput;)V

    return-void

    :pswitch_5
    check-cast v1, Lj$/time/q;

    iget-object v0, v1, Lj$/time/q;->a:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->j0(Ljava/io/DataOutput;)V

    iget-object v0, v1, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->e0(Ljava/io/DataOutput;)V

    return-void

    :pswitch_6
    check-cast v1, Lj$/time/ZoneOffset;

    invoke-virtual {v1, p1}, Lj$/time/ZoneOffset;->e0(Ljava/io/DataOutput;)V

    return-void

    :pswitch_7
    check-cast v1, Lj$/time/x;

    iget-object v0, v1, Lj$/time/x;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void

    :pswitch_8
    check-cast v1, Lj$/time/ZonedDateTime;

    iget-object v0, v1, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    iget-object v2, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget v3, v2, Lj$/time/LocalDate;->a:I

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    iget-short v3, v2, Lj$/time/LocalDate;->b:S

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeByte(I)V

    iget-short v2, v2, Lj$/time/LocalDate;->c:S

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, v0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->j0(Ljava/io/DataOutput;)V

    iget-object v0, v1, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->e0(Ljava/io/DataOutput;)V

    iget-object v0, v1, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    invoke-virtual {v0, p1}, Lj$/time/ZoneId;->X(Ljava/io/DataOutput;)V

    return-void

    :pswitch_9
    check-cast v1, Lj$/time/LocalDateTime;

    iget-object v0, v1, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget v2, v0, Lj$/time/LocalDate;->a:I

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    iget-short v2, v0, Lj$/time/LocalDate;->b:S

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    iget-short v0, v0, Lj$/time/LocalDate;->c:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, v1, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->j0(Ljava/io/DataOutput;)V

    return-void

    :pswitch_a
    check-cast v1, Lj$/time/j;

    invoke-virtual {v1, p1}, Lj$/time/j;->j0(Ljava/io/DataOutput;)V

    return-void

    :pswitch_b
    check-cast v1, Lj$/time/LocalDate;

    iget v0, v1, Lj$/time/LocalDate;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-short v0, v1, Lj$/time/LocalDate;->b:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-short v0, v1, Lj$/time/LocalDate;->c:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    :pswitch_c
    check-cast v1, Lj$/time/Instant;

    iget-wide v2, v1, Lj$/time/Instant;->a:J

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    iget v0, v1, Lj$/time/Instant;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void

    :pswitch_d
    check-cast v1, Lj$/time/d;

    iget-wide v2, v1, Lj$/time/d;->a:J

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    iget v0, v1, Lj$/time/d;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
